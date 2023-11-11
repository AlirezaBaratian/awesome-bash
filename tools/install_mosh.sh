#!/usr/bin/env bash

function main() {
    echo "We're going to install mosh..."
    sleep 3
    sudo apt update
    sudo apt install -y mosh

    echo "✅ Successfully installed mosh on your machie."
}

main
