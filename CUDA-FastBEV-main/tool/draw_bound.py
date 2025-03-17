import csv
import math
import cv2
import numpy as np
import matplotlib.pyplot as plt

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

# Ensure both lists have the same length by trimming the extra elements
min_length = min(len(lane_minus_2_x), len(lane_minus_3_x))

lane_minus_2_x = lane_minus_2_x[:min_length]
lane_minus_2_y = lane_minus_2_y[:min_length]
lane_minus_3_x = lane_minus_3_x[:min_length]
lane_minus_3_y = lane_minus_3_y[:min_length]

# Print final lengths for verification
print("Final length of lane_minus_2_x:", len(lane_minus_2_x))
print("Final length of lane_minus_3_x:", len(lane_minus_3_x))

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
canvas_cropped = cv2.imread("new-2/output_canvas.png")  # Make sure this is the correct path
canvas_cropped_rgb = cv2.cvtColor(canvas_cropped, cv2.COLOR_BGR2RGB)  # Convert BGR to RGB for Matplotlib

# Step 1: Remove red lines (strong red channel pixels)
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

# Plot the lane boundaries and waypoints on the modified canvas
fig, ax = plt.subplots(figsize=(10, 5))
ax.imshow(canvas_cropped_rgb, extent=[-50, 50, 0, 50])  # Set the world coordinate system

# Plot the lane boundaries and waypoints
ax.scatter(lane_minus_2_x[::2], lane_minus_2_y[::2], color="red", label="Lane -2", s=3)
ax.scatter(lane_minus_3_x[::2], lane_minus_3_y[::2], color="blue", label="Lane -3", s=3)
ax.plot(middle_x, middle_y, color="white", linestyle="dashed", label="Middle Boundary")
ax.plot(left_boundary_x, left_boundary_y, color="white", linestyle="solid", label="Left Boundary")
ax.plot(right_boundary_x, right_boundary_y, color="white", linestyle="solid", label="Right Boundary")

# Remove legends, axis labels, ticks, and coordinates
ax.set_xticks([])  # Remove x-axis ticks
ax.set_yticks([])  # Remove y-axis ticks
ax.grid(False)  # Remove gridlines

# Save the final image
output_filename = "modified_lane_boundaries_on_canvas_grey.png"
plt.savefig(output_filename, bbox_inches="tight", dpi=300, figsize=(10, 5),  transparent=True)
print(f"Final modified lane boundary plot saved to {output_filename}")

plt.show()




