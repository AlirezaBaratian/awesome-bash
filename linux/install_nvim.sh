#!/usr/bin/env bash

clear
echo "📗 This script downloads and installs the latest stable version of neovim on your linux."
sleep 3

curl -L "https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz" -o "/tmp/nvim-linux64.tar.gz"
tar xvzf 