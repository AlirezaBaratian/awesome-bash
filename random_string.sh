#!/usr/bin/env bash

# Prompt the user for the length of the random string
read -p "Enter the length of the random string: " length

# Generate a random string of the specified length
random_string=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w "$length" | head -n 1)

# Print the random string
echo "Random String: $random_string"
