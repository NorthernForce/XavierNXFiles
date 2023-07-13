#!/bin/sh
set -e -x
IMAGE_NAME=$1
shift
DEV_DIR=$(pwd)
docker run --rm -it --privileged --network host --workdir /workspaces/rosnfr -v ${DEV_DIR}:/workspaces/rosnfr \
    -v ${HOME}/.Xauthority:/root/.Xauthority --runtime nvidia --env DISPLAY=${DISPLAY} \
    -v ${HOME}/.vscode-server:/root/.vscode-server \
    -v /dev/*:/dev/* \
    --entrypoint /workspaces/workspace_entrypoint.sh ${IMAGE_NAME} /bin/bash $@