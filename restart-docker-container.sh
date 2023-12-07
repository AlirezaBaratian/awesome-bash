#!/bin/bash

function main() {
    docker compose down
    docker compose up -d
}

main
