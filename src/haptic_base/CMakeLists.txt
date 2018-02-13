cmake_minimum_required(VERSION 2.8.3)
project(haptic_base)

## catkinビルドに必要なコンポーネントパッケージの設定
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  message_generation
)

## メッセージファイルの設定
add_message_files(
  FILES
  PWMValues.msg
  PWMValues16.msg
  DSValues.msg
  PutterValues.msg
)

## add_message_filesで使用するメッセージの依存関係を設定
generate_messages(DEPENDENCIES std_msgs)

## インクルードディレクトリ、ライブラリ、catkinビルド、システムに依存するパッケージの指定
catkin_package(
 INCLUDE_DIRS include
 LIBRARIES 
 CATKIN_DEPENDS roscpp rospy std_msgs message_runtime
 DEPENDS
)

## インクルードディレクトリの設定
include_directories(
  #${catkin_INCLUDE_DIRS} ~/LeapSDK/include
  #${Eigen_INCLUDE_DIRS}
)

## leapard_msg_publisherノードの設定
#add_executable()
#target_link_libraries(publisher ${catkin_LIBRARIES})
#add_dependencies(publisher
#  haptic_base_generate_messages_cpp)

## arduino_msgノードの設定
##add_executable(arduino_msg_subscriber
##  src/arduino_msg.cpp)
##target_link_libraries(arduino_msg_subscriber ${catkin_LIBRARIES})
##add_dependencies(arduino_msg_subscriber
##  arduino_generate_messages_cpp)
