docker run -it --rm --network=host \
    -v $(pwd):/root/tools_ws/src/ \
    --name=magical_ros2_conversion_tool magical_ros2_conversion_tool:latest 
