#!/bin/sh
cd $(dirname $0)
sudo cp launch_docker_devel.sh /usr/bin/launch_docker_devel
sudo chmod +x /usr/bin/launch_docker_devel
sudo cp launch_docker_ros.sh /usr/bin/launch_docker_ros
sudo chmod +x /usr/bin/launch_docker_ros
sudo cp make_ros_service.sh /usr/bin/make_ros_service
sudo chmod +x /usr/bin/make_ros_service
sudo cp -r templates /usr/share/templates