#!/bin/bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

start_in_terminal() {
    local title="$1"
    local script_name="$2"

    gnome-terminal \
        --title="$title" \
        -- bash -lc "\"$SCRIPT_DIR/$script_name\"; exec bash" &
}

echo "按顺序启动现有脚本..."

chmod +x "$SCRIPT_DIR"/*.sh

start_in_terminal "lio_driver" "lio_driver.sh"
sleep 8

start_in_terminal "ui" "ui.sh"
sleep 3

start_in_terminal "pos_trans" "pos_trans.sh"
sleep 3


start_in_terminal "serial" "serial.sh"
sleep 3

start_in_terminal "info_trans" "info_trans.sh"

echo "启动命令已全部下发。"
