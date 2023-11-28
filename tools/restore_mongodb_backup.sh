#!/usr/bin/env bash

function main() {
    read -p "Enter the backup file full path: " file
    cd /tmp
    tar xvJf "$file"
    mongorestore
}

main
