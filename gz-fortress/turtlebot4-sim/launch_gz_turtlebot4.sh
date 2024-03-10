#!/bin/bash

xhost +local:docker
sudo docker run -it -d --rm --name turtlebot4-sim --net=host --privileged -v=/dev:/dev -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority:ro -e NVIDIA_DRIVER_CAPABILITIES=all -e NVIDIA_VISIBLE_DEVICES=all turtlebot4-sim source install/setup.bash && ros2 launch turtlebot4_ignition_bringup turtlebot4_ignition.launch.py rviz:=true sync:=false
