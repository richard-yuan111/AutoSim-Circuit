import os
import glob

def clean_directory(directory, extension):
    """Remove all files with the given extension in the specified directory."""
    files = glob.glob(os.path.join(directory, f"*.{extension}"))
    for file in files:
        os.remove(file)
        print(f"Deleted: {file}")

if __name__ == '__main__':
    clean_directory('model-0218/resnet18int8', 'txt')
    clean_directory('result-0218', 'png')

    print("Cleanup complete.")

