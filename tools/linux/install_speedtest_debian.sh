#!/usr/bin/env bash

function main() {
    echo "Installing speedtest for your debian-based machine..."
    sleep 1

    sudo apt-get install curl
    curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
    sudo apt-get install speedtest

    echo "✅ Successfully installed speedtest on your server."
}

main
