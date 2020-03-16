#This Project demonstrates the Basics of ROS

Creation of new ROS Nodes and topics, the way to interact with other nodes is shown by an example as follows:

  ##There are 2 ROS nodes in this project - 
    1. The Ball
    2. The Robot
    
  The Robot node continously monitors the topics from Ball node and as soon as the position of Ball changes in the Gazebo enviroment,
  the robot moves towards it in order to keep the ball in sight.
  
  ##Sensors mounted on Robot Node:
    1. Camera
    2. Hokuyo Lidar
  
