#!/usr/bin/env bash

clear
echo "📗 This script downloads and installs the latest stable version of neovim on your linux."
sleep 3

# Download the latest version form GitHub releases onto /opt
curl -L "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz" -o "/opt/nvim-linux64.tar.gz"

# Extract files and remove the archive
tar xvzf "/opt/nvim-linux64.tar.gz"
rm "/opt/nvim-linux64.tar.gz"

# Link the executable binary to /usr/local/bin
ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim