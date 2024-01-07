#!/usr/bin/env bash

function main() {
    apt update
    apt install -y nginx-full
}

main
