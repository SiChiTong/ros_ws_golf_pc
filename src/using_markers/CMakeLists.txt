cmake_minimum_required(VERSION 2.8.3)
project(using_markers)

find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  visualization_msgs
  tf
)

## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)

## Generate messages in the 'msg' folder
# add_message_files(
#   FILES
#   Message1.msg
#   Message2.msg
# )

## Generate services in the 'srv' folder
# add_service_files(
#   FILES
#   Service1.srv
#   Service2.srv
# )

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  geometry_msgs visualization_msgs tf
)


catkin_package(
INCLUDE_DIRS include
LIBRARIES using_markers
CATKIN_DEPENDS geometry_msgs roscpp visualization_msgs tf
DEPENDS system_lib
)


# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ executable
add_executable(basic_shapes
 src/basic_shapes.cpp)
target_link_libraries(basic_shapes ${catkin_LIBRARIES})

add_executable(imu_sub
 src/basic_shapes.cpp)
target_link_libraries(imu_sub ${catkin_LIBRARIES})


