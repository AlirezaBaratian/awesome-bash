#!/usr/bin/env bash

function main() {
    read -p "Enter the user's name: " name
    read -p "Enter a strong password for this user: " password

    useradd -m $name -G sudo -s /bin/bash
    echo "$passwrod\n$passwrod" | passwd $name
}

main
