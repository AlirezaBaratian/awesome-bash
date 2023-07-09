#!/usr/bin/env bash

# Generate a random number between 1024 and 65535
random_port=$(( RANDOM % 64512 + 1024 ))

echo "Random Port: $random_port"