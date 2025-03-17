import cv2
import numpy as np
import math
import csv

# Read ego vehicle's position and orientation from the CSV file
ego_x = 0
ego_y = 0
ego_yaw = 0

with open("new-2/odometry.csv", "r") as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        ego_x = float(row["x"])
        ego_y = float(row["y"])
        ego_yaw = float(row["yaw"])

# Convert yaw to radians for transformation
ego_yaw_rad = math.radians(ego_yaw)

# Parameters for range
max_distance_ahead = 50  # Maximum distance ahead (in meters)
max_distance_left_right = 50  # Maximum left-right offset (in meters)

# Lists to store waypoints for lane_id = -2 and lane_id = -3
lane_minus_2_x = []
lane_minus_2_y = []
lane_minus_3_x = []
lane_minus_3_y = []

# Read the waypoints from the CSV file
with open("new-2/waypoints.csv", "r") as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        waypoint_x = float(row["x"])
        waypoint_y = float(row["y"])
        lane_id = int(row["lane_id"])

        # Transform waypoints into the ego vehicle’s coordinate system
        relative_x = waypoint_x - ego_x
        relative_y = waypoint_y - ego_y

        # Rotate the coordinates based on the ego vehicle's yaw
        rotated_y = relative_x * math.cos(ego_yaw_rad) + relative_y * math.sin(ego_yaw_rad)
        rotated_x = -relative_x * math.sin(ego_yaw_rad) + relative_y * math.cos(ego_yaw_rad)

        # Check if the waypoint is within the forward and left-right bounds
        if 0 <= rotated_y <= max_distance_ahead and -max_distance_left_right <= rotated_x <= max_distance_left_right:
            if lane_id == -2:
                lane_minus_2_x.append(rotated_x)
                lane_minus_2_y.append(rotated_y)
            elif lane_id == -3:
                lane_minus_3_x.append(rotated_x)
                lane_minus_3_y.append(rotated_y)

# Compute the middle boundary (average of lane -2 and lane -3)
middle_x = [(x1 + x2) / 2 for x1, x2 in zip(lane_minus_2_x, lane_minus_3_x)]
middle_y = [(y1 + y2) / 2 for y1, y2 in zip(lane_minus_2_y, lane_minus_3_y)]

# Compute the left and right boundaries (3.5m apart, so 1.75m offset from the middle)
lane_width_half = 3.5  # Half width of 3.5m lane
left_boundary_x = []
left_boundary_y = []
right_boundary_x = []
right_boundary_y = []

for i in range(len(middle_x) - 1):
    # Compute the direction vector between consecutive middle points
    dx = middle_x[i + 1] - middle_x[i]
    dy = middle_y[i + 1] - middle_y[i]
    length = math.sqrt(dx**2 + dy**2)

    if length == 0:
        continue

    # Normalize direction vector
    dx /= length
    dy /= length

    # Compute the perpendicular (normal) direction
    nx = -dy
    ny = dx

    # Offset by 1.75 meters to get left and right lane boundaries
    left_boundary_x.append(middle_x[i] + lane_width_half * nx)
    left_boundary_y.append(middle_y[i] + lane_width_half * ny)
    right_boundary_x.append(middle_x[i] - lane_width_half * nx)
    right_boundary_y.append(middle_y[i] - lane_width_half * ny)

# Load the cropped canvas image
canvas_cropped = cv2.imread("new-2/output_canvas.png")  # Ensure this is the correct path

# Step 1: Remove red lines (strong red channel pixels)
canvas_cropped_rgb = cv2.cvtColor(canvas_cropped, cv2.COLOR_BGR2RGB)  # Convert BGR to RGB for processing
lower_red = np.array([100, 0, 0])  # Lower bound for red
upper_red = np.array([255, 100, 100])  # Upper bound for red

# Create a mask for red pixels
red_mask = cv2.inRange(canvas_cropped_rgb, lower_red, upper_red)

# Set the red pixels to grey
canvas_cropped_rgb[red_mask != 0] = [128, 128, 128]  # Change red pixels to grey

# Step 2: Change black lines to grey (near black pixels)
lower_black = np.array([0, 0, 0])  # Black color
upper_black = np.array([50, 50, 50])  # Tolerance for black color

# Create a mask for black pixels
black_mask = cv2.inRange(canvas_cropped_rgb, lower_black, upper_black)

# Change the black pixels to grey (RGB value: 128, 128, 128)
canvas_cropped_rgb[black_mask != 0] = [128, 128, 128]  # Change black to grey

# Step 3: Draw boundaries and points
# Convert back to BGR for OpenCV drawing (OpenCV uses BGR format)
canvas_bgr = cv2.cvtColor(canvas_cropped_rgb, cv2.COLOR_RGB2BGR)

# Function to transform world coordinates to pixel coordinates
def world_to_pixel(x, y):
    pixel_x = int((x + 50) * 10)  # Scale x to pixel space [0, 1000]
    pixel_y = int(500 - ((y / 50) * 500))  # Scale y to pixel space [0, 500]
    return pixel_x, pixel_y

# Function to draw dashed lines
def draw_dashed_line(image, start, end, color, thickness, dash_length=10, gap_length=5):
    # Calculate the distance between the start and end points
    dx = end[0] - start[0]
    dy = end[1] - start[1]
    line_length = math.sqrt(dx**2 + dy**2)
    
    # Normalize direction
    dx /= line_length
    dy /= line_length

    # Draw the dashed line segment by segment
    current_pos = start
    while True:
        # Calculate the end of the next dash
        next_pos = (current_pos[0] + dx * dash_length, current_pos[1] + dy * dash_length)
        
        # Draw a line for the dash
        cv2.line(image, (int(current_pos[0]), int(current_pos[1])), (int(next_pos[0]), int(next_pos[1])), color, thickness)
        
        # Move the current position forward by dash_length + gap_length
        current_pos = (next_pos[0] + dx * gap_length, next_pos[1] + dy * gap_length)
        
        # If the current position exceeds the end position, stop drawing
        if math.sqrt((current_pos[0] - start[0])**2 + (current_pos[1] - start[1])**2) > line_length:
            break

# Draw the middle boundary as a broken line (dashed line)
for i in range(len(middle_x) - 1):
    start_x, start_y = world_to_pixel(middle_x[i], middle_y[i])
    end_x, end_y = world_to_pixel(middle_x[i + 1], middle_y[i + 1])
    draw_dashed_line(canvas_bgr, (start_x, start_y), (end_x, end_y), (255, 255, 255), 2)

# Draw the left boundary
for i in range(len(left_boundary_x) - 1):
    start_x, start_y = world_to_pixel(left_boundary_x[i], left_boundary_y[i])
    end_x, end_y = world_to_pixel(left_boundary_x[i + 1], left_boundary_y[i + 1])
    cv2.line(canvas_bgr, (start_x, start_y), (end_x, end_y), (255, 255, 255), 2)

# Draw the right boundary
for i in range(len(right_boundary_x) - 1):
    start_x, start_y = world_to_pixel(right_boundary_x[i], right_boundary_y[i])
    end_x, end_y = world_to_pixel(right_boundary_x[i + 1], right_boundary_y[i + 1])
    cv2.line(canvas_bgr, (start_x, start_y), (end_x, end_y), (255, 255, 255), 2)

for i in range(0, len(lane_minus_2_x), 2):  # Step of 2 to skip every other point
    pixel_x, pixel_y = world_to_pixel(lane_minus_2_x[i], lane_minus_2_y[i])
    cv2.circle(canvas_bgr, (pixel_x, pixel_y), 3, (0, 0, 255), -1)  # Red points
    
# Define car size
car_width = 20  # Full car width in pixels
car_height = 40  # Full car height in pixels
car_x, car_y = 500, 500  # Center of the car

# Compute the top-left and bottom-right corners
top_left = (car_x - car_width // 2, car_y - car_height // 2)
bottom_right = (car_x + car_width // 2, car_y + car_height // 2)

# Draw only half of the car (front half)
half_bottom_right = (bottom_right[0], car_y)  # Cut at the middle

cv2.rectangle(canvas_bgr, top_left, half_bottom_right, (0, 0, 255), -1)  # Red half car

# Optional: Draw a black outline
cv2.rectangle(canvas_bgr, top_left, half_bottom_right, (0, 0, 0), 2)


# Step 4: Resize the image to 1000x500 (already the canvas size)
# Step 5: Save the image without any white background (using transparency)
output_filename = "modified_lane_boundaries_on_canvas_grey_1000x500_no_background.png"
cv2.imwrite(output_filename, canvas_bgr)

print(f"Final modified lane boundary plot saved to {output_filename}")



