#!/usr/bin/env bash

function main() {
    backup_dir="/var/lib/mongodb-backup"
    mkdir -p "$backup_dir"
    cd "$backup_dir"
    backup_filename="mongodb_backup_$(date +%Y%m%d).tar.xz"
    mongodump --out "dump"
    tar -cvJf "$backup_filename" "dump"
    rm -rf dump
}

main
