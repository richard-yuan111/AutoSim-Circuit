import numpy as np
import math
import csv

import argparse
import json
import os
import pickle
import yaml
import cv2
import numpy as np
import torch
import re
from pyquaternion.quaternion import Quaternion

from mmdet3d.core.bbox.structures.lidar_box3d import LiDARInstance3DBoxes as LB

def read_txt_to_array(txt_path):
    with open(txt_path, 'r') as f:
        lines = f.readlines()

    data_list = []
    for line in lines:
        elements = line.strip().split()
        data_list.extend(map(float, elements))

    data_arr = np.array(data_list)
    data_arr = data_arr.reshape(-1, 9)
    bboxes   = data_arr[:, :7]
    scores   = data_arr[:, 8]
    cls_arr  = data_arr[:, 7]

    return bboxes, scores, cls_arr


def read_data_file(file_path):
    info_dict = {}
    data = torch.load(os.path.join(file_path, "../example-data.pth"))
    info_dict["cams"] = {}
    j = 0

    for file in data['img_metas'].data[0][0]['img_info']:
        file_arr = file['filename'].split('/')[-2]
        info_dict["cams"][file_arr]={}
        info_dict["cams"][file_arr]['img_path'] = f"{file_path}/{j}-{file_arr[4:]}.jpg"
        
        lidar2img_extra = data['img_metas'].data[0][0]['lidar2img']["lidar2img_extra"][j]
        lidar2img_aug = data['img_metas'].data[0][0]['lidar2img']["lidar2img_aug"][j]
        
        R = lidar2img_extra["sensor2lidar_rotation"]
        T = lidar2img_extra["sensor2lidar_translation"]
        I = lidar2img_extra["cam_intrinsic"]
        info_dict["cams"][file_arr]['sensor2lidar_rotation'] = R
        info_dict["cams"][file_arr]['sensor2lidar_translation'] = T
        info_dict["cams"][file_arr]['cam_intrinsic'] = I
        info_dict["cams"][file_arr]['lidar2img'] = {}
        info_dict["cams"][file_arr]['lidar2img']['extrinsic'] = data['img_metas'].data[0][0]['lidar2img']['extrinsic'][j]
        info_dict["cams"][file_arr]['lidar2img']['intrinsic'] = data['img_metas'].data[0][0]['lidar2img']['intrinsic'][:3,:3]
        info_dict["cams"][file_arr]['post_tran'] = lidar2img_aug['post_tran']
        info_dict["cams"][file_arr]['post_rot'] = lidar2img_aug['post_rot']
        
        j = j + 1
        
        
    return info_dict


def check_point_in_img(points, height, width):
    valid = np.logical_and(points[:, 0] >= 0, points[:, 1] >= 0)
    valid = np.logical_and(valid, np.logical_and(points[:, 0] < width, points[:, 1] < height))
    return valid


def depth2color(depth):
    gray = max(0, min((depth + 2.5) / 3.0, 1.0))
    max_lumi = 200
    colors = np.array([[max_lumi, 0, max_lumi], 
                       [max_lumi, 0, 0],
                       [max_lumi, max_lumi, 0],
                       [0, max_lumi, 0], 
                       [0, max_lumi, max_lumi], 
                       [0, 0, max_lumi]],
        dtype=np.float32)
    if gray == 1:
        return tuple(colors[-1].tolist())
    num_rank = len(colors) - 1
    rank     = np.floor(gray * num_rank).astype(np.int)
    diff     = (gray - rank / num_rank) * num_rank
    return tuple((colors[rank] + (colors[rank + 1] - colors[rank]) * diff).tolist())


def lidar2img(points_lidar, camrera_info):
    points_lidar_homogeneous  = np.concatenate([points_lidar, np.ones((points_lidar.shape[0], 1), dtype=points_lidar.dtype)], axis=1)
    
    lidar2camera              = camrera_info['lidar2img']['extrinsic']
    points_camera_homogeneous = points_lidar_homogeneous @ lidar2camera.T
    points_camera             = points_camera_homogeneous[:, :3]
    valid                     = np.ones((points_camera.shape[0]), dtype=bool)
    valid                     = np.logical_and(points_camera[:, -1] > 0.5, valid)
    points_camera             = points_camera / points_camera[:, 2:3]
    camera2img                = camrera_info['lidar2img']['intrinsic']
    points_img                = points_camera @ camera2img.T
    post_aug                  = np.eye(3, dtype=np.float32)
    post_aug[:2, :2]          = camrera_info['post_rot'][:2,:2]
    post_aug[:2, 2]           = camrera_info['post_tran'][:2]
    points_img                = np.linalg.inv(post_aug) @ points_img.transpose(1,0)
    points_img                = points_img.transpose(1,0)[:, :2]
    return points_img, valid


def get_lidar2global(lidar2ego_rotation, lidar2ego_translation, ego2global_rotation, ego2global_translation):
    lidar2ego          = np.eye(4, dtype=np.float32)
    lidar2ego[:3, :3]  = Quaternion(lidar2ego_rotation).rotation_matrix
    lidar2ego[:3, 3]   = lidar2ego_translation
    ego2global         = np.eye(4, dtype=np.float32)
    ego2global[:3, :3] = Quaternion(ego2global_rotation).rotation_matrix
    ego2global[:3, 3]  = ego2global_translation
    return ego2global @ lidar2ego

def read_odometry(file_path):
    """Reads the ego vehicle's position and orientation from a CSV file."""
    with open(file_path, "r") as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            return float(row["x"]), float(row["y"]), math.radians(float(row["yaw"]))
    return 0, 0, 0
    
def read_waypoints(file_path, ego_x, ego_y, ego_yaw_rad, max_distance_ahead, max_distance_left_right):
    """Reads waypoints and filters and sorts those within range of the ego vehicle."""
    lane_minus_2_points = []
    lane_minus_3_points = []
    
    with open(file_path, "r") as csvfile:
        reader = csv.DictReader(csvfile)

        for row in reader:
            waypoint_x = float(row["x"])
            waypoint_y = float(row["y"])
            lane_id = int(row["lane_id"])
            
            # Transform to ego-relative coordinates
            relative_x = waypoint_x - ego_x
            relative_y = waypoint_y - ego_y
            rotated_y = relative_x * math.cos(ego_yaw_rad) + relative_y * math.sin(ego_yaw_rad)
            rotated_x = -relative_x * math.sin(ego_yaw_rad) + relative_y * math.cos(ego_yaw_rad)
            
            # Check if the point is within the specified range
            if 0 <= rotated_y <= max_distance_ahead and -max_distance_left_right <= rotated_x <= max_distance_left_right:
                distance = math.sqrt(rotated_x ** 2 + rotated_y ** 2)  # Calculate distance from (0,0)

                if lane_id == -2:
                    lane_minus_2_points.append((rotated_x, rotated_y, distance))
                elif lane_id == -3:
                    lane_minus_3_points.append((rotated_x, rotated_y, distance))

    # Sort points by their distance from (0,0)
    lane_minus_2_points.sort(key=lambda point: point[2])
    lane_minus_3_points.sort(key=lambda point: point[2])

    
    # Return the ordered points without the distance value
    return (
        [p[0] for p in lane_minus_2_points], [p[1] for p in lane_minus_2_points],
        [p[0] for p in lane_minus_3_points], [p[1] for p in lane_minus_3_points]
    )

'''
def read_waypoints(file_path, ego_x, ego_y, ego_yaw_rad, max_distance_ahead, max_distance_left_right):
    """Reads waypoints and filters those within range of the ego vehicle."""
    lane_minus_2_x, lane_minus_2_y = [], []
    lane_minus_3_x, lane_minus_3_y = [], []
    
    with open(file_path, "r") as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            waypoint_x = float(row["x"])
            waypoint_y = float(row["y"])
            lane_id = int(row["lane_id"])
            
            relative_x = waypoint_x - ego_x
            relative_y = waypoint_y - ego_y
            rotated_y = relative_x * math.cos(ego_yaw_rad) + relative_y * math.sin(ego_yaw_rad)
            rotated_x = -relative_x * math.sin(ego_yaw_rad) + relative_y * math.cos(ego_yaw_rad)
            
            if 0 <= rotated_y <= max_distance_ahead and -max_distance_left_right <= rotated_x <= max_distance_left_right:
                if lane_id == -2:
                    lane_minus_2_x.append(rotated_x)
                    lane_minus_2_y.append(rotated_y)
                elif lane_id == -3:
                    lane_minus_3_x.append(rotated_x)
                    lane_minus_3_y.append(rotated_y)
    
    return lane_minus_2_x, lane_minus_2_y, lane_minus_3_x, lane_minus_3_y
'''

def compute_boundaries(lane_minus_2_x, lane_minus_2_y, lane_minus_3_x, lane_minus_3_y, lane_width_half=3.5):
    """Computes the middle, left, and right boundaries of the lanes."""
    middle_x = [(x1 + x2) / 2 for x1, x2 in zip(lane_minus_2_x, lane_minus_3_x)]
    middle_y = [(y1 + y2) / 2 for y1, y2 in zip(lane_minus_2_y, lane_minus_3_y)]
    
    left_boundary_x, left_boundary_y, right_boundary_x, right_boundary_y = [], [], [], []
    
    for i in range(len(middle_x) - 1):
        dx = middle_x[i + 1] - middle_x[i]
        dy = middle_y[i + 1] - middle_y[i]
        length = math.sqrt(dx**2 + dy**2)
        if length == 0:
            continue
        dx /= length
        dy /= length
        nx, ny = -dy, dx
        left_boundary_x.append(middle_x[i] + lane_width_half * nx)
        left_boundary_y.append(middle_y[i] + lane_width_half * ny)
        right_boundary_x.append(middle_x[i] - lane_width_half * nx)
        right_boundary_y.append(middle_y[i] - lane_width_half * ny)
    
    return middle_x, middle_y, left_boundary_x, left_boundary_y, right_boundary_x, right_boundary_y

def preprocess_canvas(image_path):
    """Loads and preprocesses the canvas image by removing red and black lines."""
    canvas = cv2.imread(image_path)
    canvas_rgb = cv2.cvtColor(canvas, cv2.COLOR_BGR2RGB)
    
    red_mask = cv2.inRange(canvas_rgb, np.array([100, 0, 0]), np.array([255, 100, 100]))
    black_mask = cv2.inRange(canvas_rgb, np.array([0, 0, 0]), np.array([50, 50, 50]))
    
    canvas_rgb[red_mask != 0] = [128, 128, 128]
    canvas_rgb[black_mask != 0] = [128, 128, 128]
    
    return cv2.cvtColor(canvas_rgb, cv2.COLOR_RGB2BGR)
    
def preprocess(canvas):
    """Remove red and black lines from the image and replace them with grey."""
    
    red_mask = cv2.inRange(canvas, np.array([100, 0, 0]), np.array([255, 100, 100]))
    black_mask = cv2.inRange(canvas, np.array([0, 0, 0]), np.array([50, 50, 50]))
    canvas[red_mask != 0] = [128, 128, 128]
    canvas[black_mask != 0] = [128, 128, 128]
    return canvas

def world_to_pixel(x, y):
    return int((x + 50) * 10), int(500 - ((y / 50) * 500))

def draw_elements(canvas, middle_x, middle_y, left_x, left_y, right_x, right_y, lane_x, lane_y):
    """Draws lane boundaries, waypoints, and the ego vehicle on the canvas."""
    for i in range(len(middle_x) - 1):
        cv2.line(canvas, world_to_pixel(middle_x[i], middle_y[i]), world_to_pixel(middle_x[i+1], middle_y[i+1]), (255, 255, 255), 2)
    for i in range(len(left_x) - 1):
        cv2.line(canvas, world_to_pixel(left_x[i], left_y[i]), world_to_pixel(left_x[i+1], left_y[i+1]), (255, 255, 255), 2)
    for i in range(len(right_x) - 1):
        cv2.line(canvas, world_to_pixel(right_x[i], right_y[i]), world_to_pixel(right_x[i+1], right_y[i+1]), (255, 255, 255), 2)
    for i in range(0, len(lane_x), 2):
        cv2.circle(canvas, world_to_pixel(lane_x[i], lane_y[i]), 3, (0, 0, 255), -1)
    top_left = (500 - 10, 500 - 20)
    bottom_right = (500 + 10, 500)
    cv2.rectangle(canvas, top_left, bottom_right, (0, 0, 255), -1)
    cv2.rectangle(canvas, top_left, bottom_right, (0, 0, 0), 2)
    return canvas
    
def main(data_root, pred_path, vis_path):
    info_dict               = read_data_file(data_root)
    cam_info_dict           = info_dict['cams']
    #print(cam_info_dict)
    bboxes, scores, cls_arr = read_txt_to_array(pred_path)

    # 定义绘制BEV视角下框的索引
    draw_boxes_indexes_bev      = [(0, 1), (1, 2), (2, 3), (3, 0)]
    draw_boxes_indexes_img_view = [(0, 1), (1, 2), (2, 3), (3, 0), (4, 5), (5, 6), 
                                   (6, 7), (7, 4), (0, 4), (1, 5), (2, 6), (3, 7)]
    canva_size   = 1000
    show_range   = 50
    scale_factor = 4
    color_map    = {0: (255, 255, 0), 1: (0, 255, 255)}

    # 定义相机视角列表
    print('start visualizing results')
    pred_boxes        = np.array(bboxes, dtype=np.float32)
    corners_lidar     = LB(pred_boxes, origin=(0.5, 0.5, 0)).corners.numpy().reshape(-1, 3)

    pred_flag = np.ones((corners_lidar.shape[0] // 8, ), dtype=np.bool)
    scores    = np.array(scores, dtype=np.float32)

    # 构建预测框的标志数组
    sort_ids  = np.argsort(scores)

    # 对相机视角进行可视化
    imgs = []
    views = ['CAM_FRONT_LEFT', 'CAM_FRONT', 'CAM_FRONT_RIGHT']
    for view in views:
            
        img = cv2.imread(cam_info_dict[view]['img_path'])
        img = cv2.resize(img, (1600, 900))

        # 将雷达坐标转换为图像坐标并绘制目标框
        corners_img, valid = lidar2img(corners_lidar, cam_info_dict[view])
        valid = valid.reshape(-1, 8)
        corners_img = corners_img.reshape(-1, 8, 2).astype(np.int)
        for aid in range(valid.shape[0]):
            for index in draw_boxes_indexes_img_view:
                if valid[aid, index[0]] and valid[aid, index[1]]:
                    cv2.line(img, corners_img[aid, index[0]], corners_img[aid, index[1]],
                            color=color_map[int(pred_flag[aid])], thickness=scale_factor)
        imgs.append(img)

    # 构建BEV视图的画布
    canvas = np.zeros((int(canva_size), int(canva_size), 3), dtype=np.uint8)


    ## 绘制中心点和距离
    center_ego = (0, 0)
    center_canvas = int((center_ego[0] + show_range) / show_range / 2.0 * canva_size)
    cv2.circle(canvas, center=(center_canvas, center_canvas), radius=1, color=(255, 255, 255), thickness=0)
    dis = 10
    for r in range(dis, 100, dis):
        r_canvas = int(r / show_range / 2.0 * canva_size)
        cv2.circle(canvas, center=(center_canvas, center_canvas), radius=r_canvas, color=depth2color(r), thickness=0)
        
    
    # 绘制BEV视角下的预测框
    corners_lidar          = corners_lidar.reshape(-1, 8, 3)
    corners_lidar[:, :, 1] = -corners_lidar[:, :, 1]
    bottom_corners_bev     = corners_lidar[:, [0, 3, 7, 4], :2]
    bottom_corners_bev     = (bottom_corners_bev + show_range) / show_range / 2.0 * canva_size
    bottom_corners_bev     = np.round(bottom_corners_bev).astype(np.int32)
    center_bev             = corners_lidar[:, [0, 3, 7, 4], :2].mean(axis=1)
    head_bev               = corners_lidar[:, [0, 4], :2].mean(axis=1)
    canter_canvas          = (center_bev + show_range) / show_range / 2.0 * canva_size
    center_canvas          = canter_canvas.astype(np.int32)
    head_canvas            = (head_bev + show_range) / show_range / 2.0 * canva_size
    head_canvas            = head_canvas.astype(np.int32)

    # 在BEV视角下绘制预测框
    for rid in sort_ids:
        score = scores[rid]
        if score < 0.2 and pred_flag[rid]:
            continue
        score = min(score * 2.0, 1.0) if pred_flag[rid] else 1.0
        color = color_map[int(pred_flag[rid])]
        for index in draw_boxes_indexes_bev:
            cv2.line(canvas, bottom_corners_bev[rid, index[0]], bottom_corners_bev[rid, index[1]],
                    [color[0] * score, color[1] * score, color[2] * score], thickness=1)
        cv2.line(canvas, center_canvas[rid], head_canvas[rid], [color[0] * score, color[1] * score, color[2] * score], 1, lineType=8)
        
    # Get the height of the canvas
    height, width = canvas.shape[:2]
    # Crop the upper half of the canvas
    canvas_cropped = canvas[:height // 2, :]
    #cv2.imwrite("new-2/output_canvas.png", canvas_cropped)
    
    file_path = data_root + "/odometry.csv"
    ego_x, ego_y, ego_yaw_rad = read_odometry(file_path)
    lane_minus_2_x, lane_minus_2_y, lane_minus_3_x, lane_minus_3_y = read_waypoints("new-2/waypoints.csv", ego_x, ego_y, ego_yaw_rad, 50, 50)
    middle_x, middle_y, left_x, left_y, right_x, right_y = compute_boundaries(lane_minus_2_x, lane_minus_2_y, lane_minus_3_x, lane_minus_3_y)
    canvas = preprocess(canvas_cropped)
    
    canvas = draw_elements(canvas, middle_x, middle_y, left_x, left_y, right_x, right_y, lane_minus_2_x, lane_minus_2_y)
    #cv2.imwrite("modified_canvas.png", canvas)
    #print("Final image saved as modified_canvas.png")

    # 融合图像视角和BEV视角的结果
    img = np.zeros((900 * 1 + 500 * scale_factor, 1600 * 3, 3), dtype=np.uint8)
    img[:900, :, :] = np.concatenate(imgs[:3], axis=1)
    #img_back = np.concatenate([imgs[3][:, ::-1, :], imgs[4][:, ::-1, :], imgs[5][:, ::-1, :]], axis=1)
    #img[900 + canva_size * scale_factor:, :, :] = img_back
    img = cv2.resize(img, (int(1600 / scale_factor * 2.5), int(900 / scale_factor * 1 + 500)))
    w_begin = int((1600 * 3 / scale_factor - canva_size) // 2)
    img[int(900 / scale_factor):int(900 / scale_factor) + 500, 0:0 + canva_size, :] = canvas

    # 保存可视化结果
    cv2.imwrite(vis_path, img)
    print(f'Saved visual result to {vis_path}')

if __name__ == '__main__':
    pred_dir = 'model-op/resnet18int8/'  # Directory containing .txt prediction files
    data_root_base = 'example-op/'  # Base directory for datasets
    vis_base = 'result-op2/'  # Output directory for visualization results

    # Ensure the output directory exists
    os.makedirs(vis_base, exist_ok=True)

    # Loop through all .txt files in the prediction directory
    for pred_file in os.listdir(pred_dir):
        if pred_file.endswith('.txt'):
            pred_path = os.path.join(pred_dir, pred_file)
            set_name = os.path.splitext(pred_file)[0]  # Remove the .txt extension
            data_root = os.path.join(data_root_base, set_name)  # Match the dataset
            vis_path = os.path.join(vis_base, f"{set_name}.png")  # Output visualization path

            # Run the main function
            main(data_root, pred_path, vis_path)
