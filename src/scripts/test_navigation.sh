#!/bin/sh
xterm  -e  " catkin_make;source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_office.launch" &
sleep 10
xterm  -e  " source devel/setup.bash; roslaunch rvizConfig view_navigation.launch" &
sleep 5 
xterm  -e  " source devel/setup.bash; roslaunch turtlebot_gazebo amcl.launch"
