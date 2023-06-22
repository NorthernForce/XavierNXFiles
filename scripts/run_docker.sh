#!/bin/sh
set -e -x
IMAGE_NAME=$1
shift
DEV_DIR=$(pwd)
docker run --rm -it --privileged --network host --workdir /workspaces/rosnfr -v ${DEV_DIR}:/workspaces/rosnfr --runtime nvidia \
    --entrypoint /workspaces/workspace_entrypoint.sh ${IMAGE_NAME} /bin/bash $@