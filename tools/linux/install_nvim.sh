#!/usr/bin/env bash

function main() {
    clear
    echo "📗 Installing nvim..."
    sleep 3

    apt update
    apt install -y neovim
}

main
