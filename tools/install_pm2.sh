#!/usr/bin/env bash

function main() {
    # Install nvm v0.39.5
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    source ~/.bashrc
    
    # Install nodejs v16.18.1
    nvm install v16.18.1

    # Update npm
    npm install -g npm

    # Install pm2
    npm install -g pm2
}

main
