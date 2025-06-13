#!/bin/bash

# Build the docker file
docker build . -f docker/Dockerfile -t magical_ros2_conversion_tool:latest
