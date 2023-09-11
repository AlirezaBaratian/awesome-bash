#!/usr/bin/env bash

clear
echo "IR to * Tunnel Script"
read -p "Enter your foreign server IP address: " ip_address
read -p "Enter your desired port: " port

sudo apt update
sudo apt install -y iptables

sudo sysctl net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -j MASQUERADE

sudo iptables -t nat -A PREROUTING -p tcp --dport $port -j DNAT --to-destination $ip_address:$port