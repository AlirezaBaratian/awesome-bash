#!/usr/bin/env bash

clear
echo "🤖 Installing certbot via apt on your Ubuntu machine..."

sudo apt update
sudo apt install -y certbot python3-certbot-nginx

clear
echo "✅ Successfully installed certbot, use it with this command:
certbot"