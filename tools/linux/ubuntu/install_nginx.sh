#!/usr/bin/env bash

clear
echo"🔧 Installing the latest version of nginx mainline on your Ubuntu server..."

# Install the prerequisites:
sudo apt install curl gnupg2 ca-certificates lsb-release ubuntu-keyring

# Import an official nginx signing key so apt could verify the packages authenticity. Fetch the key:
curl https://nginx.org/keys/nginx_signing.key | gpg --dearmor \
    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null

# Verify that the downloaded file contains the proper key:
gpg --dry-run --quiet --no-keyring --import --import-options import-show /usr/share/keyrings/nginx-archive-keyring.gpg

# Use mainline nginx packages
echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
http://nginx.org/packages/mainline/ubuntu `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list

# Set up repository pinning to prefer our packages over distribution-provided ones:
echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" \
    | sudo tee /etc/apt/preferences.d/99nginx

# Install nginx itself
sudo apt update
sudo apt install nginx

# Setup nginx
systemctl start nginx
systemctl enable nginx

echo "✅ Successfully installed nginx on your server."
systemctl status nginx