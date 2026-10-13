#!/bin/bash

# 回退到 project/lidar_ws/
cd /home/jetson/hurricane/lidar_ws

# 设置环境变量
source install/setup.bash

# 启动  坐标系转换 节点
ros2 run ros2_to_stm32 map_node


