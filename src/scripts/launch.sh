#!/bin/sh
xterm  -e  " catkin_make;source devel/setup.bash; roslaunch turtlebot_gazebo turtlebot_office.launch" &
sleep 10
xterm  -e  " source devel/setup.bash; roslaunch rvizConfig view_navigation.launch" &
sleep 5 
xterm  -e  " source devel/setup.bash; roslaunch turtlebot_gazebo amcl.launch" &
sleep 5
xterm  -e  " source devel/setup.bash; rosrun pick_objects pick_objects" &
sleep 1
xterm  -e  " source devel/setup.bash; rosrun add_markers add_markers" 

