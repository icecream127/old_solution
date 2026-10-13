#!/bin/bash

# 为nano TTL设置串口权限
#sudo chmod 777 /dev/ttyUSB0

# 回退到 project/lidar_ws/
cd /home/jetson/hurricane/lidar_ws

# 设置环境变量
source install/setup.bash

# 启动  串口发送 节点
ros2 run ros2_to_stm32 serial_node


