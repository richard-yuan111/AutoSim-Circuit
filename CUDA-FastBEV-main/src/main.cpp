/*
 * @Author: Mandy 
 * @Date: 2023-08-13 13:19:50 
 * @Last Modified by: Mandy
 * @Last Modified time: 2023-08-13 18:51:21
 */
#include <cstdlib>
#include <unistd.h>
#include <sys/wait.h>

#include <boost/filesystem.hpp>
#include <cuda_runtime.h>
#include <string.h>
#include <iostream>
#include <sstream>
#include <fstream>
#include <vector>
#include <chrono> // Include chrono library for timing
//#include <filesystem>
#include <iomanip>
#include <ctime>
#include <sstream>
namespace fs = boost::filesystem;

#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>

#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb_image_write.h>
#include <algorithm>

#include "fastbev/fastbev.hpp"
#include "common/check.hpp"
#include "common/tensor.hpp"
#include "common/timer.hpp"
#include "common/visualize.hpp"

const int final_height = 256;
const int final_weith = 704;

// Function to get current time as a string including milliseconds
std::string getCurrentTimeString() {
    // Get current time with high resolution
    auto now = std::chrono::system_clock::now();
    auto nowAsTimeT = std::chrono::system_clock::to_time_t(now);
    auto nowMs = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;

    // Convert time_t to tm as local time
    std::tm bt = *std::localtime(&nowAsTimeT);

    // Use stringstream to format time
    std::ostringstream oss;
    oss << std::put_time(&bt, "%Y-%m-%d %H:%M:%S"); // Format date and time up to seconds
    oss << '.' << std::setfill('0') << std::setw(3) << nowMs.count(); // Add milliseconds

    return oss.str();
}


static std::pair<std::vector<unsigned char*>, std::string> load_images(const std::string& root, int ccount) {
// static std::vector<unsigned char*> load_images(const std::string& root) {
    const char* file_names[] = {"0-FRONT.jpg", "1-FRONT_RIGHT.jpg", "2-FRONT_LEFT.jpg"};
    std::vector<fs::path> candidate_dirs;

    // Iterate through each item in the root directory to find directories
    for (const auto& entry : fs::directory_iterator(root)) {
        if (fs::is_directory(entry)) {
            candidate_dirs.push_back(entry);
        }
    }

    // Sort directories by name in descending order to get the latest first
    std::sort(candidate_dirs.begin(), candidate_dirs.end(), [](const fs::path& a, const fs::path& b) {
        return a.filename().string() > b.filename().string();
    });

    fs::path latest_dir_with_three_images;

    // Find the latest directory with exactly three images
    for (const auto& dir : candidate_dirs) {
        size_t image_count = 0;
        for (const auto& file_name : file_names) {
            if (fs::exists(dir / file_name)) {
                ++image_count;
            }
        }
        if (image_count == 3) {
		if (ccount == 0) {
            		latest_dir_with_three_images = dir;
            		break; // Stop at the first (latest) directory that matches the criteria
		}
		else {
			ccount = ccount - 1;
		}
        }
    }
    
    // Ensure a valid directory was found
    if (latest_dir_with_three_images.empty()) {
        std::cerr << "No directory containing exactly three specified images was found under: " << root << std::endl;
    } else {
        // Print the name of the latest directory
        std::cout << "The latest directory with three images is: " << latest_dir_with_three_images.filename().string() << std::endl;
        // Get the current time
        std::cout << "Current time: " << getCurrentTimeString() << std::endl;
    }

    std::vector<unsigned char*> images;
    for (const auto& file_name : file_names) {
        fs::path img_path = latest_dir_with_three_images / file_name;
        if (fs::exists(img_path)) { // Load only if the image exists in the directory
            int width, height, channels;
            unsigned char* img = stbi_load(img_path.c_str(), &width, &height, &channels, 0);
            if (img) {
                images.push_back(img);
            } else {
                std::cerr << "Failed to load image: " << img_path << std::endl;
            }
        }
    }
    return {images, latest_dir_with_three_images.filename().string()};
    //return images;
}


static void free_images(std::vector<unsigned char*>& images) {
  for (size_t i = 0; i < images.size(); ++i) stbi_image_free(images[i]);

  images.clear();
}


std::shared_ptr<fastbev::Core> create_core(const std::string& model, const std::string& precision) {
  printf("Create by %s, %s\n", model.c_str(), precision.c_str());
  fastbev::pre::NormalizationParameter normalization;
  normalization.image_width = 1600;
  normalization.image_height = 900;
  //normalization.image_width = 800;
  //normalization.image_height = 600;
  normalization.output_width = 704;
  normalization.output_height = 256;
  normalization.num_camera = 3;
  normalization.resize_lim = 0.44f;
  normalization.interpolation = fastbev::pre::Interpolation::Nearest;

  float mean[3] = {123.675, 116.28, 103.53};
  float std[3] = {58.395, 57.12, 57.375};
  normalization.method = fastbev::pre::NormMethod::mean_std(mean, std, 1.0f, 0.0f);
  fastbev::pre::GeometryParameter geo_param;
  geo_param.feat_height = 64;
  geo_param.feat_width = 176;
  geo_param.num_camera =3;
  geo_param.valid_points = 160000;
  geo_param.volum_x = 200;
  geo_param.volum_y = 200;
  geo_param.volum_z = 4;

  fastbev::CoreParameter param;
  param.pre_model = nv::format("model/%s/build/fastbev_pre_trt.plan", model.c_str());
  param.normalize = normalization;
  param.post_model = nv::format("model/%s/build/fastbev_post_trt_decode.plan", model.c_str());
  param.geo_param = geo_param;
  return fastbev::create_core(param);
}

//void sendBrakeCommand() {
    //std::system("python3 brake_controller.py");
    //std::cout << "Brake command sent to CARLA." << std::endl;
    // Implementation depends on your CARLA client setup
    // This might involve sending a control command through a client-server setup or directly interfacing with the CARLA API
//}
void sendBrakeCommand() {
    pid_t pid = fork(); // Create a new process

    if (pid == 0) { // Child process
        // Specifying "python3" as the interpreter to ensure Python 3 is used.
        // Adjust the path to the script as necessary.
        char* args[] = {(char*)"python3", (char*)"brake_controller.py", NULL};
        execvp("python3", args); // Execute the Python script

        // execvp only returns if an error occurred.
        std::cerr << "Failed to execute brake_controller.py" << std::endl;
        exit(1); // Terminate the child process with an error status
    } else if (pid > 0) { // Parent process
        int status;
        waitpid(pid, &status, 0); // Wait for the child process to finish

        if (WIFEXITED(status) && WEXITSTATUS(status) == 0) {
            std::cout << "Brake command successfully sent." << std::endl;
        } else {
            std::cerr << "Brake command script ended with an error." << std::endl;
        }
    } else {
        // Fork failed
        std::cerr << "Failed to fork a new process for brake_controller.py" << std::endl;
    }
}


void SaveBoxPred(std::vector<fastbev::post::transbbox::BoundingBox> boxes, std::string file_name)
{
    std::ofstream ofs;
    ofs.open(file_name, std::ios::out);
    //bool shouldBrake = false; // Flag to determine if braking is necessary

    if (ofs.is_open()) {
        for (const auto box : boxes) {
          ofs << box.position.x << " ";
          ofs << box.position.y << " ";
          ofs << box.position.z << " ";
          ofs << box.size.w << " ";
          ofs << box.size.l << " ";
          ofs << box.size.h << " ";
          ofs << box.z_rotation << " ";
          ofs << box.id << " ";
          ofs << box.score << " ";
          ofs << "\n";
          // Check if the condition for braking is met
          //if (box.position.x > -2 && box.position.x < 2 && box.position.y < 25) {
            //shouldBrake = true;
          //}
        }
    }
    else {
      std::cerr << "Output file cannot be opened!" << std::endl;
    }
    ofs.close();
    std::cout << "Saved prediction in: " << file_name << std::endl;
    // If the braking condition is met, send a brake command
    //if (shouldBrake) {
      //sendBrakeCommand();
    //}
};


//800 600 6 100
int main(int argc, char** argv) {
    std::cout << "Runnnnnnnnnnnnnnnnnn" << std::endl;
    const char* data = "example-data";
    const char* model = "resnet18";
    const char* precision = "fp16";

    if (argc > 1) data = argv[1];
    if (argc > 2) model = argv[2];
    if (argc > 3) precision = argv[3];

    std::string Save_Dir = nv::format("model-op/%s/result", model);
    auto core = create_core(model, precision);
    if (core == nullptr) {
        printf("Core creation failed.\n");
        return -1;
    }

    cudaStream_t stream;
    cudaStreamCreate(&stream);

    core->print();
    core->set_timer(true);

    auto valid_c_idx = nv::Tensor::load(nv::format("%s/valid_c_idx.tensor", data), false);
    auto valid_x = nv::Tensor::load(nv::format("%s/x.tensor", data), false);
    auto valid_y = nv::Tensor::load(nv::format("%s/y.tensor", data), false);
    core->update(valid_c_idx.ptr<float>(), valid_x.ptr<int64_t>(), valid_y.ptr<int64_t>(), stream);

    const int iterations = 3000; // Number of iterations for the loop
    auto totalStart = std::chrono::high_resolution_clock::now(); // Start the total time measurement
    std::string save_file_name = Save_Dir + ".txt";

    for (int iter = 0; iter < iterations; ++iter) {
        // Replace structured bindings with explicit access to pair elements
        std::pair<std::vector<unsigned char*>, std::string> result = load_images(data, iter);
        std::vector<unsigned char*>& images = result.first;
        std::string& latest_dir_with_three_images = result.second;

        // Run inference
        auto bboxes = core->forward((const unsigned char**)images.data(), stream);

        // Optional: Process the bboxes or save results here if needed for each iteration
        Save_Dir = nv::format("model-op/%s/%s", model, latest_dir_with_three_images.c_str());
        std::cout << "The latest directory is: " << Save_Dir << std::endl;
        save_file_name = Save_Dir + ".txt";
        SaveBoxPred(bboxes, save_file_name);
        free_images(images);
    }

    cudaStreamDestroy(stream);
    auto totalEnd = std::chrono::high_resolution_clock::now(); // End the total time measurement
    std::chrono::duration<double> totalDiff = totalEnd - totalStart;
    double totalSeconds = totalDiff.count();
    double fps = iterations / totalSeconds; // Calculate the FPS over all iterations

    std::cout << "Completed " << iterations << " iterations in " << totalSeconds << " seconds. Overall FPS: " << fps << std::endl;

    return 0;
}


