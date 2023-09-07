#!/usr/bin/env bash

clear
echo "🐠 Installing fish shell..."

sudo apt-add-repository ppa:fish-shell/release-3
sudo apt update
sudo apt install fish