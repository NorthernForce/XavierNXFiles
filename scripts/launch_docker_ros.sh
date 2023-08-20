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
    --runtime nvidia \
    -v /dev/*:/dev/* --name aarch64-ros-container \
    --entrypoint /workspaces/workspace_entrypoint.sh ${IMAGE_NAME} /bin/bash && \
    docker exec aarch64-ros-container /bin/bash -c "source install/setup.bash && ros2 launch ${PACKAGE_NAME} ${LAUNCH_FILE} $@" && \
    docker stop aarch64-ros-container