#!/usr/bin/env bash

if [$$1 && $2]; then
    min=$1
    max=$2
else
    min=1024
    max=64512
fi

# Generate a random number between 1024 and 65535
random_port=$(( RANDOM % max + min ))

echo "🌐 Random Port: $random_port"