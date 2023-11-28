#!/usr/bin/env bash

function main() {
    # Install nvm v0.39.5
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

    # Add nvm to path
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
    
    # Install nodejs v16.18.1
    nvm install v16.18.1

    # Update npm
    npm install -g npm

    # Install pm2
    npm install -g pm2
}

main
