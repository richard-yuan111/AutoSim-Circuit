execute_process(COMMAND "/home/krg/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_common/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/krg/carla-ros-bridge/catkin_ws/build/ros-bridge/carla_common/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
