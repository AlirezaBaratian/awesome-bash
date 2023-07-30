#!/usr/bin/env bash

clear
echo "Installing bpytop 🖥"

apt update
apt install python3-pip python3-venv

pip install -U bpytop