#!/usr/bin/env bash

# Prompt user for hostname
read -p "Enter the hostname: " hostname

# Try to establish an SSH connection
ssh -q -o BatchMode=yes -o ConnectTimeout=5 "$hostname" "echo 2>&1" >/dev/null

# Check the exit status of the previous command
if [ $? -eq 0 ]; then
    echo "SSH connection to $hostname successful."
else
    echo "SSH connection to $hostname failed."
fi
