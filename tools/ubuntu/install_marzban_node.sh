#!/bin/bash

clear
echo "🧨 Installing Mazrban-node on /opt"
sleep 2

# Install dependencies
apt install socat -y && apt install curl socat -y && apt install git -y

# Clone the repo on /opt and get there
git clone https://github.com/Gozargah/Marzban-node /opt/Marzban-node
cd /opt/Marzban-node

# Install docker
curl -fsSL https://get.docker.com | sh

# Run Marzban-node
docker compose up -d

# View the node cert
cat /var/lib/marzban-node/ssl_cert.pem