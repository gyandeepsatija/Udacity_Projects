# Home Service Robot

## Problem Statement
The objects need to be picked up from one location in the house(map) and dropped at other location

## packages used
gmapping 
turtlebot_teleop 
turtlebot_rviz_launchers 
turtlebot_gazebo 

## Gmapping
gmapping package is used to create a map manually by moving the turtlebot via keyboard teleop.
SLAM(Simultaneous localization and Mapping) is used to create the output .pgm and .yaml files 
gmapping_demo.launch file used for this.
This feature an be tested by running test_slam.sh script file.

## Navigation
Amcl algorithm runs in creating a low cost path(Uniform cost search) which can be run using amcl_demo.launch file.
A 2D Navigation goal sent using rviz inorder to make the turtlebot navigate through the map built earlier using SLAM.
This feature an be tested by running test_navigation.sh script file.

## pick_objects
Pick_objects package sends multiple goals to the turtlebot to navigate the bot throught the map.
A pickup goal is first sent and then it listens until the goal is reached and
then a drop off goal is sent again to navigate the bot to drop off location
This feature an be tested by running pick_objects.sh script file.

## add_markers
add_markers package displays cube shape markers to visualise the object postion at pick up goal 
dropped off by the bot at the drop off goal position.
This feature an be tested by running add_marker.sh script file.

## home_service feature
Run home_service.sh to see the goals being sent to the bot and also the markers help to visualize the pickup and drop off function.
