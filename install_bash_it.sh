#!/usr/bin/env bash

main() {
    sudo apt update
    sudo apt install -y git
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
}

main
