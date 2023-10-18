#!/bin/sh
IMAGE_NAME=$1
shift
PACKAGE_NAME=$1
shift
LAUNCH_FILE=$1
shift
DEV_DIR=$(pwd)
trap "echo Stopping aarch64-ros-container && docker stop aarch64-ros-container" INT
docker run --rm -dit --privileged --network host --workdir /workspaces/rosnfr -v ${DEV_DIR}:/workspaces/rosnfr \
    -v ${HOME}/.Xauthority:/root/.Xauthority --runtime nvidia --env DISPLAY=${DISPLAY} \
    -v /dev/*:/dev/* --name aarch64-ros-container -v /tmp/.X11-unix:/tmp/.X11-unix \
    --entrypoint /workspaces/workspace_entrypoint.sh ${IMAGE_NAME} /bin/bash && \
    docker exec aarch64-ros-container /bin/bash -c "source install/setup.bash && RMW_IMPLEMENTATION=rmw_cyclonedds_cpp ros2 launch ${PACKAGE_NAME} ${LAUNCH_FILE} $@" && \
    docker stop aarch64-ros-container
