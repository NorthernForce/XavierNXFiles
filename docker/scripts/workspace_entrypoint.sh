#!/bin/bash
echo "source /opt/ros/${ROS_DISTRO}/install/setup.bash" >> ~/.bashrc
source /opt/ros/${ROS_DISTRO}/install/setup.bash
$@