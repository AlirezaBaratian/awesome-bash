#!/usr/bin/env bash

function main() {
    # Install nvm v0.39.5
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

    # Add nvm to path
    export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
    
    # Install nodejs v16.18.1
    nvm install v16.18.1
    source ~/.bashrc

    # Install pm2
    npm install -g pm2
}

main
