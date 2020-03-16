#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

// Define a client for to send goal requests to the move_base server through a SimpleActionClient
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv){
  // Initialize the simple_navigation_goals node
  ros::init(argc, argv, "simple_navigation_goals");

  //tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  // Wait 5 sec for move_base action server to come up
  while(!ac.waitForServer(ros::Duration(5.0))){
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  move_base_msgs::MoveBaseGoal goal;
  // set up the frame parameters
  goal.target_pose.header.frame_id = "map";
  goal.target_pose.header.stamp = ros::Time::now();
  float goalPosition[2][2] = {{5.0,1.0} , {2.0,-1.0}};
  // Define a position and orientation for the robot to reach
  for(int i =0; i<2;i++){
    
  	goal.target_pose.pose.position.x = goalPosition[i][0];
  	goal.target_pose.pose.orientation.w = goalPosition[i][1];

   // Send the goal position and orientation for the robot to reach
  	ROS_INFO("Sending goal");
  	ac.sendGoal(goal);

  // Wait an infinite time for the results
  	ac.waitForResult();

  // Check if the robot reached its goal
  	if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED)
    	ROS_INFO("Hooray, the base moved %f meter forward", goalPosition[i][0]);
  	else
    	ROS_INFO("The base failed to move forward 1 meter for some reason");
    ros::Duration(5.0).sleep();
  }
  return 0;
}