import cv2
import os

def create_video_from_images(image_dir, output_video, fps=16):
    """
    Create a video from images in a directory.

    Args:
        image_dir (str): Path to the directory containing images.
        output_video (str): Path to save the output video.
        fps (int): Frames per second for the video.
    """
    # Get a sorted list of image files
    image_files = sorted([
        os.path.join(image_dir, f)
        for f in os.listdir(image_dir) if f.endswith(('.png', '.jpg', '.jpeg'))
    ])

    if not image_files:
        print("No images found in the directory.")
        return

    # Read the first image to get dimensions
    first_image = cv2.imread(image_files[0])
    if first_image is None:
        print("Error reading the first image. Please check the files.")
        return

    height, width, _ = first_image.shape

    # Use MPEG-4 codec for MKV format
    fourcc = cv2.VideoWriter_fourcc(*'X264')
    video_writer = cv2.VideoWriter(output_video, fourcc, fps, (width, height))

    # Add images to the video
    for image_file in image_files:
        img = cv2.imread(image_file)
        if img is None:
            print(f"Could not read {image_file}. Skipping...")
            continue
        video_writer.write(img)

    # Release the VideoWriter
    video_writer.release()
    print(f"Video saved as {output_video}")

# Define paths and parameters
if __name__ == "__main__":
    image_dir = "/home/krg/CUDA-FastBEV-main/result-op2"
    output_video = "/home/krg/CUDA-FastBEV-main/result_op.mkv"
    fps = 16

    # Create the video
    create_video_from_images(image_dir, output_video, fps)


