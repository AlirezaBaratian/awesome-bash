#!/usr/bin/env bash

function main() {
    read -p "Enter your hostname or IP address. 🖥" host
    read -p "How many times do you want to ping it? 🔄" count

    ping -c $count $host
}

main
