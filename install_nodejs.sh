#!/usr/bin/env bash

function main() {
    clear
    echo "✂️ Installing nodejs v16.18.1 with nvm tool for future version management"

    version = "v16.18.1"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

    source .bashrc
    nvm install $version

    clear
    echo "✅ Installed nodejs $VERSION"
}

main
