# XavierNXFiles

This repo is intended to keep common files including Dockerfiles, patches, scripts, and services intended for the Jetson Xavier NX.

## Docker

There are many dockerfiles provided in this repo.

<li>WPILib</li>
<li>ROS2</li>
<li>OpenCV</li>
<li>Navigation2</li>
<li>NVIDIA-ISAAC-ROS</li>
<li>apriltag_ros</li>

### Building

To build an image, use:

`cd /path/to/XavierNXFiles && docker build -f docker/Dockerfile.{EXT} -t {IMAGE_NAME} docker`

To build an image ontop of another image, use:

`cd /path/to/XavierNXFiles && docker build -f docker/Dockerfile.{EXT} -t {IMAGE_NAME} --build-arg BASE_IMAGE={PREVIOUS_IMAGE} docker`
