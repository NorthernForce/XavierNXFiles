#!/usr/bin/env bash
set -e -x
ARCH=$(uname -i)
echo "ARCH:  $ARCH"   
apt-get update
apt-get install -y --no-install-recommends \
        build-essential \
	gfortran \
        cmake \
        git \
        file \
	tar \
        libatlas-base-dev \
        libavcodec-dev \
        libavformat-dev \
        libavresample-dev \
        libcanberra-gtk3-module \
        libdc1394-22-dev \
        libeigen3-dev \
        libglew-dev \
        libgstreamer-plugins-base1.0-dev \
        libgstreamer-plugins-good1.0-dev \
        libgstreamer1.0-dev \
        libgtk-3-dev \
        libjpeg-dev \
        libjpeg8-dev \
        libjpeg-turbo8-dev \
        liblapack-dev \
        liblapacke-dev \
        libopenblas-dev \
        libpng-dev \
        libpostproc-dev \
        libswscale-dev \
        libtbb-dev \
        libtbb2 \
        libtesseract-dev \
        libtiff-dev \
        libv4l-dev \
        libxine2-dev \
        libxvidcore-dev \
        libx264-dev \
	libgtkglext1 \
	libgtkglext1-dev \
        pkg-config \
        qv4l2 \
        v4l-utils \
        zlib1g-dev
if [ $ARCH != "x86_64" ]; then
	echo "detected $ARCH, installing python3 dev packages..."
	apt-get install -y --no-install-recommends \
		python3-pip \
		python3-dev \
		python3-numpy \
		python3-distutils \
		python3-setuptools
fi