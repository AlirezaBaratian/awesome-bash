#!/usr/bin/env bash

function main() {
    clear
    echo "Installing the lastet version of neoftech on your server."

    sleep 2

    echo "Installing make dependencies..."
    sleeo 1

    apt update
    apt install -y build-essential

    echo "Now, installing neofetch..."

    curl -LO https://github.com/dylanaraps/neofetch/archive/refs/tags/7.1.0.tar.gz
    tar -xzvf 7.1.0.tar.gz
    cd neofetch-7.1.0
    make install

    cd ..
    rm -rf 7.1.0.tar.gz neofetch-7.1.0
}

main
