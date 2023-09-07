#!/usr/bin/env bash

clear
echo "✂️ Installing nodejs v16.18.1 with nvm tool for future version management"

version = "v16.18.1"
# Download and install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

# Add nvm to path
source .bashrc

# Install nodejs v16.18.1
nvm install $version

clear
echo "✅ Installed nodejs $VERSION"