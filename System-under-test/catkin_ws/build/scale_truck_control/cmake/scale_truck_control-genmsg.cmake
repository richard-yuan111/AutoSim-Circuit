# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "scale_truck_control: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iscale_truck_control:/home/krg/catkin_ws/src/scale_truck_control/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(scale_truck_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" "scale_truck_control/lane"
)

get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" ""
)

get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" ""
)

get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" ""
)

get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" ""
)

get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" ""
)

get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" NAME_WE)
add_custom_target(_scale_truck_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "scale_truck_control" "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg"
  "${MSG_I_FLAGS}"
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_cpp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(scale_truck_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(scale_truck_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(scale_truck_control_generate_messages scale_truck_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_cpp _scale_truck_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scale_truck_control_gencpp)
add_dependencies(scale_truck_control_gencpp scale_truck_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scale_truck_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg"
  "${MSG_I_FLAGS}"
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)
_generate_msg_eus(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
)

### Generating Services

### Generating Module File
_generate_module_eus(scale_truck_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(scale_truck_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(scale_truck_control_generate_messages scale_truck_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_eus _scale_truck_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scale_truck_control_geneus)
add_dependencies(scale_truck_control_geneus scale_truck_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scale_truck_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg"
  "${MSG_I_FLAGS}"
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)
_generate_msg_lisp(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(scale_truck_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(scale_truck_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(scale_truck_control_generate_messages scale_truck_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_lisp _scale_truck_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scale_truck_control_genlisp)
add_dependencies(scale_truck_control_genlisp scale_truck_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scale_truck_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg"
  "${MSG_I_FLAGS}"
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)
_generate_msg_nodejs(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
)

### Generating Services

### Generating Module File
_generate_module_nodejs(scale_truck_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(scale_truck_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(scale_truck_control_generate_messages scale_truck_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_nodejs _scale_truck_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scale_truck_control_gennodejs)
add_dependencies(scale_truck_control_gennodejs scale_truck_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scale_truck_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg"
  "${MSG_I_FLAGS}"
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)
_generate_msg_py(scale_truck_control
  "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
)

### Generating Services

### Generating Module File
_generate_module_py(scale_truck_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(scale_truck_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(scale_truck_control_generate_messages scale_truck_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane_coef.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lane.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/xav2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2xav.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/lrc2ocr.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/ocr2lrc.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/krg/catkin_ws/src/scale_truck_control/msg/AckermannDrive.msg" NAME_WE)
add_dependencies(scale_truck_control_generate_messages_py _scale_truck_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(scale_truck_control_genpy)
add_dependencies(scale_truck_control_genpy scale_truck_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS scale_truck_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/scale_truck_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(scale_truck_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/scale_truck_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(scale_truck_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/scale_truck_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(scale_truck_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/scale_truck_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(scale_truck_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/scale_truck_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(scale_truck_control_generate_messages_py std_msgs_generate_messages_py)
endif()
