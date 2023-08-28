#!/usr/bin/env bash

clear
echo "✂️ Installing nodejs v16.18.1 with nvm tool for future version management"

version = "v16.18.1"
# Download and install nvm
curl -L -o /tmp/nvm-install.sh https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh
bash /tmp/nvm-install.sh

# Add nvm to path
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Install nodejs v16.18.1
nvm install $version

clear
echo "✅ Installed nodejs $VERSION"