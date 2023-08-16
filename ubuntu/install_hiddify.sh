#!/usr/bin/env bash
clear
echo "👉🏼 We're about to install Hiddify on your Ubuntu server..."
sleep 2
# Install dependencies
sudo apt update && sudo apt install curl

# Download the installer to /tmp and make it executable
curl -L "https://raw.githubusercontent.com/hiddify/hiddify-config/main/common/download_install.sh" -o /tmp/hiddify_download_install.sh
chmod +x /tmp/hiddify_download_install.sh

# Run the installer scrpip
/tmp/hiddify_download_install.sh