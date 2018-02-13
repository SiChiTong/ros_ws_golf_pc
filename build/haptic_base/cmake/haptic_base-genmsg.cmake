# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "haptic_base: 4 messages, 0 services")

set(MSG_I_FLAGS "-Ihaptic_base:/home/raven/ros_ws/src/haptic_base/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(haptic_base_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" NAME_WE)
add_custom_target(_haptic_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haptic_base" "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" ""
)

get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" NAME_WE)
add_custom_target(_haptic_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haptic_base" "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" ""
)

get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" NAME_WE)
add_custom_target(_haptic_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haptic_base" "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" ""
)

get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" NAME_WE)
add_custom_target(_haptic_base_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "haptic_base" "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base
)
_generate_msg_cpp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base
)
_generate_msg_cpp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base
)
_generate_msg_cpp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base
)

### Generating Services

### Generating Module File
_generate_module_cpp(haptic_base
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(haptic_base_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(haptic_base_generate_messages haptic_base_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_cpp _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_cpp _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_cpp _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_cpp _haptic_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haptic_base_gencpp)
add_dependencies(haptic_base_gencpp haptic_base_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haptic_base_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base
)
_generate_msg_eus(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base
)
_generate_msg_eus(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base
)
_generate_msg_eus(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base
)

### Generating Services

### Generating Module File
_generate_module_eus(haptic_base
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(haptic_base_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(haptic_base_generate_messages haptic_base_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_eus _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_eus _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_eus _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_eus _haptic_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haptic_base_geneus)
add_dependencies(haptic_base_geneus haptic_base_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haptic_base_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base
)
_generate_msg_lisp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base
)
_generate_msg_lisp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base
)
_generate_msg_lisp(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base
)

### Generating Services

### Generating Module File
_generate_module_lisp(haptic_base
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(haptic_base_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(haptic_base_generate_messages haptic_base_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_lisp _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_lisp _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_lisp _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_lisp _haptic_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haptic_base_genlisp)
add_dependencies(haptic_base_genlisp haptic_base_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haptic_base_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base
)
_generate_msg_nodejs(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base
)
_generate_msg_nodejs(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base
)
_generate_msg_nodejs(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base
)

### Generating Services

### Generating Module File
_generate_module_nodejs(haptic_base
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(haptic_base_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(haptic_base_generate_messages haptic_base_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_nodejs _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_nodejs _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_nodejs _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_nodejs _haptic_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haptic_base_gennodejs)
add_dependencies(haptic_base_gennodejs haptic_base_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haptic_base_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base
)
_generate_msg_py(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base
)
_generate_msg_py(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base
)
_generate_msg_py(haptic_base
  "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base
)

### Generating Services

### Generating Module File
_generate_module_py(haptic_base
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(haptic_base_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(haptic_base_generate_messages haptic_base_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_py _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/DSValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_py _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PutterValues.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_py _haptic_base_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raven/ros_ws/src/haptic_base/msg/PWMValues16.msg" NAME_WE)
add_dependencies(haptic_base_generate_messages_py _haptic_base_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(haptic_base_genpy)
add_dependencies(haptic_base_genpy haptic_base_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS haptic_base_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/haptic_base
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(haptic_base_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/haptic_base
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(haptic_base_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/haptic_base
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(haptic_base_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/haptic_base
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(haptic_base_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/haptic_base
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(haptic_base_generate_messages_py std_msgs_generate_messages_py)
endif()
