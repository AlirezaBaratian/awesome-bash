#!/usr/bin/env bash

clear
echo "This script switched Xray core to the latest version."
sleep 2

# Install dependencies
apt install -y wget unzip

# Downlaod and setup Xray core inside marzban data directory
download_url="https://github.com/XTLS/Xray-core/releases/download/v1.8.4/Xray-linux-64.zip"
xray_path="/var/lib/marzban/xray-core"

mkdir -p "$xray_path" && cd "$xray_path"
wget "$download_url"

unzip Xray-linux-64.zip
rm Xray-linux-64.zip

# Switch Xray core in environemt variables
env_path="/opt/marzban/.env"
search_line="# XRAY_EXECUTABLE_PATH ="
new_line='XRAY_EXECUTABLE_PATH = "/var/lib/marzban/xray-core/xray"'

sed -i "s/$search_line/$new_line/g" "$env_path"

# Restart marzban to apply the changes
marzban restart