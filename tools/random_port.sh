#!/usr/bin/env bash

function main() {
    if [ $# -eq 0 ]; then
    min=1024
    max=49151
    else
        min=$1
        max=$2
    fi

    random_port=$(( RANDOM % $max + $min ))

    echo "🌐 Random Port: $random_port"
}

main
