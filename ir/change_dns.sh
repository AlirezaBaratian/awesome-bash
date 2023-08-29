#!/usr/bin/env bash

echo "Changing the DNS resolver to a new one"
sleep 1
read -p "Enter the new nameserver: " nameserver

# Update the nameserver in /etc/resolv.conf
sudo sed -i "s/nameserver .*/nameserver $nameserver/" /etc/resolv.conf
echo "Nameserver updated to $nameserver"