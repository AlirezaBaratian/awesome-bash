#!/usr/bin/env bash

function main() {
    clear
    echo "🌲 Installing 'tree' utility on your machine..."
    sleep 2

    sudo apt update
    sudo apt install -y tree

    echo "✅ Successfully installed 'tree' on your machine."
}

main
