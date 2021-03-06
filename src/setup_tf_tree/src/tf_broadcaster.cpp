/*********************************************************************
 *
 * Software License Agreement (BSD License)
 *
 *  Copyright (c) 2008, Willow Garage, Inc.
 *  All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions
 *  are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *   * Neither the name of Willow Garage, Inc. nor the names of its
 *     contributors may be used to endorse or promote products derived
 *     from this software without specific prior written permission.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 *  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 *  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 *  FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 *  INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 *  BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 *  LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 *  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *  ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *  POSSIBILITY OF SUCH DAMAGE.
 *
 * Author: Eitan Marder-Eppstein
 *********************************************************************/
#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/Vector3Stamped.h>

#define PI 3.14159265358979323846

float wheel_posx=0;
float wheel_posy=0;
float wheel_posz=0;
float wheel_orx=0;
float wheel_ory=0;
float wheel_orz=0;
float wheel_orw=1;


void wheelOdomCallback(const nav_msgs::Odometry msg)
{
	wheel_posx=msg.pose.pose.position.x;
	wheel_posy=msg.pose.pose.position.y;
	wheel_posz=msg.pose.pose.position.z;
	wheel_orx= msg.pose.pose.orientation.x;
	wheel_ory= msg.pose.pose.orientation.y;
	wheel_orz= msg.pose.pose.orientation.z;
	wheel_orw= msg.pose.pose.orientation.w;
                                            
}

int main(int argc, char** argv){
	ros::init(argc, argv, "setup_tf_tree_node");
	ros::NodeHandle n;
	ros::Subscriber wheel_odom_sub = n.subscribe<nav_msgs::Odometry>("/odom", 1, wheelOdomCallback);
	tf::TransformBroadcaster broadcaster;
	ros::Rate r(50);
	while(n.ok()){
		
		broadcaster.sendTransform(
                             
				tf::StampedTransform(tf::Transform(tf::Quaternion(wheel_orx,wheel_ory,wheel_orz,wheel_orw), tf::Vector3(wheel_posx,wheel_posy,wheel_posz)),
						ros::Time::now(),
						"/odom",
						"/base_footprint"));
                broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,-1.5707963268), tf::Vector3(0.0,0.0,0.2413)),
						ros::Time::now(), 
						"/base_footprint",
						"/base_link"));

		broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,0.0), tf::Vector3(0.0,-0.20,0.135)),
						ros::Time::now(), 
						"/base_link",
						"/pan_tilt_link"));
                broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,0), tf::Vector3(-0.28,0.3688,0.4437)),
						ros::Time::now(), 
						"/base_link",
						"/lidar_support_link"));
                broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,1.5707963268), tf::Vector3(0.0,0.0,0.09)),
						ros::Time::now(), 
						"/lidar_support_link",
						"/laser"));
		broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0,0), tf::Vector3(0.0, 0.0, 0.60)),
						ros::Time::now(),
						"/pan_tilt_link",
						"/imu")); 
		broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0, 0.0), tf::Vector3(0.00, 0.0, 1.13)),
						ros::Time::now(),
						"/pan_tilt_link",
						"/pan_link")); //0, 0.0, .7 (basic amd tripod)
broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,0.0), tf::Vector3(0.0, 0.035, 0.035)),
						ros::Time::now(),
						"/pan_link",
						"/camera_rgb_frame")); //0.01, -0.01, 0.045(tripod and basic) //0.0, 0.0, 0.045
		
broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(-1.5707963268,0.0,0.0), tf::Vector3(0.0, 0.0, 0.0)),
						ros::Time::now(),
						"/camera_rgb_frame",
						"/camera_rgb_optical_frame")); 
broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,0.0), tf::Vector3(0.0, 0.0, 0.0)),
						ros::Time::now(),
						"/camera_rgb_frame",
						"/camera_depth_frame"));
broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(-1.5707963268,0.0,0.0), tf::Vector3(0.0, 0.0, 0.0)),
						ros::Time::now(),
						"/camera_depth_frame",
						"/camera_depth_optical_frame"));  

broadcaster.sendTransform(
				tf::StampedTransform(tf::Transform(tf:: createQuaternionFromRPY(0,0.0,0.0), tf::Vector3(0.0, 0.0, 0.0)),
						ros::Time::now(),
						"/camera_rgb_frame",
						"/camera_link")); 
		ros::spinOnce();
		r.sleep();
	}
}
