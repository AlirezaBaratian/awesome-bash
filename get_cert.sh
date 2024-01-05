#!/bin/bash

main() {
    apt update
    apt install -y certbot python3-certbot
    certbot certonly --standalone
}

main
