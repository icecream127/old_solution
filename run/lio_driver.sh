#!/bin/bash

# 回退到 project/lidar_ws/
cd /home/jetson/hurricane/lidar_ws

# 设置环境变量
source install/setup.bash

# 启动  launch -+
23w+
ros2 launch fast_lio mid360_huang_launch.py
