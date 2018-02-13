# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cortex_bridge: 2 messages, 1 services")

set(MSG_I_FLAGS "-Icortex_bridge:/home/raven/ros_ws/src/cortex_ros_bridge/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cortex_bridge_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" NAME_WE)
add_custom_target(_cortex_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cortex_bridge" "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" NAME_WE)
add_custom_target(_cortex_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cortex_bridge" "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" "geometry_msgs/Point:std_msgs/Header:cortex_bridge/Marker"
)

get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" NAME_WE)
add_custom_target(_cortex_bridge_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cortex_bridge" "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cortex_bridge
)
_generate_msg_cpp(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cortex_bridge
)

### Generating Services
_generate_srv_cpp(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cortex_bridge
)

### Generating Module File
_generate_module_cpp(cortex_bridge
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cortex_bridge
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cortex_bridge_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cortex_bridge_generate_messages cortex_bridge_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_cpp _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_cpp _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_cpp _cortex_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cortex_bridge_gencpp)
add_dependencies(cortex_bridge_gencpp cortex_bridge_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cortex_bridge_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cortex_bridge
)
_generate_msg_eus(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cortex_bridge
)

### Generating Services
_generate_srv_eus(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cortex_bridge
)

### Generating Module File
_generate_module_eus(cortex_bridge
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cortex_bridge
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cortex_bridge_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cortex_bridge_generate_messages cortex_bridge_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_eus _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_eus _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_eus _cortex_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cortex_bridge_geneus)
add_dependencies(cortex_bridge_geneus cortex_bridge_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cortex_bridge_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cortex_bridge
)
_generate_msg_lisp(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cortex_bridge
)

### Generating Services
_generate_srv_lisp(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cortex_bridge
)

### Generating Module File
_generate_module_lisp(cortex_bridge
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cortex_bridge
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cortex_bridge_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cortex_bridge_generate_messages cortex_bridge_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_lisp _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_lisp _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_lisp _cortex_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cortex_bridge_genlisp)
add_dependencies(cortex_bridge_genlisp cortex_bridge_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cortex_bridge_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cortex_bridge
)
_generate_msg_nodejs(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cortex_bridge
)

### Generating Services
_generate_srv_nodejs(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cortex_bridge
)

### Generating Module File
_generate_module_nodejs(cortex_bridge
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cortex_bridge
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cortex_bridge_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cortex_bridge_generate_messages cortex_bridge_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_nodejs _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_nodejs _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_nodejs _cortex_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cortex_bridge_gennodejs)
add_dependencies(cortex_bridge_gennodejs cortex_bridge_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cortex_bridge_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge
)
_generate_msg_py(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge
)

### Generating Services
_generate_srv_py(cortex_bridge
  "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge
)

### Generating Module File
_generate_module_py(cortex_bridge
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cortex_bridge_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cortex_bridge_generate_messages cortex_bridge_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/srv/cortexSetOrigin.srv" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_py _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Markers.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_py _cortex_bridge_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/cortex_ros_bridge/msg/Marker.msg" NAME_WE)
add_dependencies(cortex_bridge_generate_messages_py _cortex_bridge_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cortex_bridge_genpy)
add_dependencies(cortex_bridge_genpy cortex_bridge_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cortex_bridge_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cortex_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cortex_bridge
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cortex_bridge_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cortex_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cortex_bridge
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cortex_bridge_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cortex_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cortex_bridge
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cortex_bridge_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cortex_bridge)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cortex_bridge
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cortex_bridge_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cortex_bridge
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cortex_bridge_generate_messages_py geometry_msgs_generate_messages_py)
endif()
