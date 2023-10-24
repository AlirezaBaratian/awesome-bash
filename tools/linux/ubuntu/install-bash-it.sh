#!/usr/bin/env bash

show_intro() {
    clear
    echo "🍀 Installing bash-it; the most popular bash framework!"
    sleep 2
}

install() {
    sudo apt update
    sudo apt install -y git
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh
}

show_intro
install
