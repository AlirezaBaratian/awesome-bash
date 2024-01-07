#!/usr/bin/env bash

function main() {
    sudo apt update
    sudo apt install -y certbot python3-certbot-nginx
}

main
