#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <nav_msgs/Odometry.h>
#include <ros/callback_queue.h>
#include <add_markers/markerReady.h>
int ready = 0;

bool handle_ready_request(add_markers::markerReady::Request& req,
    add_markers::markerReady::Response& res){
	ready = req.ready;
    ROS_INFO("requested ready value : %d", ready);
    res.msg_feedback = "dropoff position requested";
    ROS_INFO_STREAM(res.msg_feedback);
  return true;
}

void callbackMarker(const nav_msgs::Odometry goal){
	if((goal.pose.pose.position.x > 4.90) && (ready ==0)){
    	ros::Duration(2.0).sleep();
    	ready = 1;
      	ROS_INFO("Object picked up from Station 1");
    }
    if((goal.pose.pose.position.x < 2.10) && (ready ==1)){
    	ros::Duration(2.0).sleep();
    	ready = 2;
      	ROS_INFO("Object dropped at Station 2");
    }
}

int main( int argc, char** argv )
{
  ros::init(argc, argv, "object_shape");
  ros::NodeHandle n;
  ros::Rate r(1);
  
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
  ros::ServiceServer server = n.advertiseService("/add_markers/markerReady", handle_ready_request);
  
  while (ros::ok())
  {
    visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id = "map";
    marker.header.stamp = ros::Time::now();

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker.ns = "object_shape";
    marker.id = 0;

    // Set the marker type.  Our object shape is CUBE.
    if(ready==0){
      marker.type = visualization_msgs::Marker::CUBE;
    }
    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    //marker.action = visualization_msgs::Marker::ADD;
    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    // Object pickup position

      marker.pose.position.x = 5.0;
      marker.pose.position.y = 0;
      marker.pose.position.z = 0;
      marker.pose.orientation.x = 0.0;
      marker.pose.orientation.y = 0.0;
      marker.pose.orientation.z = 0.0;
      marker.pose.orientation.w = 1.0;
    
    ros::Subscriber marker_sub = n.subscribe("/odom", 10, callbackMarker);
    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = 0.2;
    marker.scale.y = 0.2;
    marker.scale.z = 0.2;

    // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = 0.0f;
    marker.color.b = 1.0f;
    marker.color.a = 1.0;

    marker.lifetime = ros::Duration();
      
    if(ready == 2){
      marker.pose.position.x = 2.0;
      marker.pose.position.y = 0.0;
      marker.pose.position.z = 0;
      marker.pose.orientation.x = 0.0;
      marker.pose.orientation.y = 0.0;
      marker.pose.orientation.z = 0.0;
      marker.pose.orientation.w = -1.0;
    }
    if(ready == 1){
      marker.action = 2;
    }
    // Publish the marker
    marker_pub.publish(marker);
    while (marker_pub.getNumSubscribers() < 1)
    {
      if (!ros::ok())
      {
        return 0;
      }
      ROS_WARN_ONCE("Please create a subscriber to the marker");
      sleep(1);
    }
    ros::getGlobalCallbackQueue()->callAvailable(ros::WallDuration(r));
    r.sleep();
  }
}