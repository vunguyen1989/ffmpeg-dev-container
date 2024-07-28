# Use an official Ubuntu base image for ARM
FROM ubuntu:20.04

# Set environment variables to non-interactive for Docker
ENV DEBIAN_FRONTEND=noninteractive

# Update package list and install required packages
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    pkg-config \
    yasm \
    ffmpeg \
    libavcodec-dev \
    libavformat-dev \
    libswscale-dev \
    libavfilter-dev \
    libavdevice-dev \
    zlib1g-dev \
    vim \
    gdb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /workspace

# Set the default shell to bash
SHELL ["/bin/bash", "-c"]
