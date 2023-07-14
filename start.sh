#!/bin/bash

#Path: start.sh

echo -e "Starting the server"

# Start the first process

/qbittorrent --webui-port=${SERVER_PORT} --profile=/home/container/.config/qBittorrent/ --configuration=/home/container/.config/qBittorrent/ --save-path /home/container/downloads/

