#!/usr/bin/env bash

function main() {
    clear
    echo "This script creates a sudo user with your given name and password."
    sleep 2

    read -p "Enter the user's name: " name
    read -p "Enter a strong password for this user: " password

    useradd -m $name -G sudo -s /bin/bash
    echo "$passwrod\n$passwrod" | passwd $name
}

main
