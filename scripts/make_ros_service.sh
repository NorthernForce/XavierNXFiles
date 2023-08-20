#!/bin/sh
SERVICE_NAME=$1
shift
PACKAGE_NAME=$1
shift
LAUNCH_FILE=$1
shift
cp templates/
sed -i 's/old-text/new-text/g' input.txt