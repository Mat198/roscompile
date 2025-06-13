FROM osrf/ros:noetic-desktop

SHELL ["/bin/bash", "-c"]

# Update apt
RUN apt-get -y update && apt-get -y upgrade

# Install dependencies
RUN apt-get -y install \
        git \
        nano \
        python3-pip python3-catkin-tools

# Copy source code and install requirements
COPY ../magical_ros2_conversion_tool /root/tools_ws/src/magical_ros2_conversion_tool
COPY ../roscompile /root/tools_ws/src/roscompile
COPY ../ros_introspection /root/tools_ws/src/ros_introspection
COPY ../requirements.txt /root/tools_ws/src/requirements.txt
RUN pip3 install -r /root/tools_ws/src/requirements.txt

# Build, install and source ROS pkgs
WORKDIR /root/tools_ws
RUN source /opt/ros/noetic/setup.bash && catkin_make install && \
    echo "source /root/tools_ws/install/setup.bash" >> ~/.bashrc

WORKDIR /root/ros1_ws/src
COPY docker/entrypoint.sh /root/entrypoint.sh
RUN sudo chmod 755 /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]

CMD ["bash"]