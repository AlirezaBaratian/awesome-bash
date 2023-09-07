#!/usr/bin/env bash

clear
echo "🐠 Installing fish shell..."

sudo apt-add-repository ppa:fish-shell/release-3 -y
sudo apt update -y
sudo apt install fish