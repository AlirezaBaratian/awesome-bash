#!/usr/bin/env bash

# Prompt the user for the new SSH port
read -p "Enter the new SSH port: " new_port

# Update the SSH configuration file
sed -i "s/^#Port.*/Port $new_port/" /etc/ssh/sshd_config

# Restart the SSH service
service sshd restart

# Display the new SSH port
echo "SSH port changed to $new_port
Here is the result:
"

# Show ssh daemon status
service sshd status

echo "✅ Changed ssh port to $new_port"