#!/usr/bin/env bash

echo "This script allocates a swap partition and makes it persistant after reboots. "

read -p "How much swap amount do you want? (GB)
" amount

sudo fallocate -l ${amount}G /swapfile
ls -lh /swapfile

sudo chmod 600 /swapfile
ls -lh /swapfile

sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show

free -h

sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

echo "✅ Done!"