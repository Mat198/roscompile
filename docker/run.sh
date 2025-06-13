
docker run -it --rm --network=host \
    -v $1:/root/ros1_ws/src/ \
    --name=magical_ros2_conversion_tool magical_ros2_conversion_tool:latest 
