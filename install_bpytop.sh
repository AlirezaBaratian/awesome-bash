#!/usr/bin/env bash

function main() {
    apt update
    apt install -y python3-pip python3-venv
    pip install -U bpytop
}

main
