#!/bin/bash

set -e

cd /home/jetson/hurricane/lidar_ws

colcon build --packages-select ros2_to_stm32 --symlink-install

echo "ros2_to_stm32 编译完成。"
echo "请重新 source install/setup.bash 或直接重启对应启动脚本。"
