#!/usr/bin/env bash

function main() {
    clear
    echo "✂️ Random string generator"
    read -p "Enter the length of the random string: " length

    random_string=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w "$length" | head -n 1)
    echo "🧵 Random String: $random_string"
}

main
