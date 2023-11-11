#!/usr/bin/env bash

function main() {
    clear
    echo "🐠 Installing fish shell..."

    echo "yes" | sudo apt-add-repository ppa:fish-shell/release-3
    sudo apt update
    sudo apt install fish -y
}

main
