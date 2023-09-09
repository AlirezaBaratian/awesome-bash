#!/usr/bin/env bash

echo "We are about to backup current state of the MongoDB database"
sleep 1

backup_dir="/var/lib/mongodb_backup"
backup_filename="mongodb_backup_$(date +%Y%m%d).tar.xz"

mkdir -p $backup_dir
mongodump --out "$backup_dir/dump"
tar -cvJf "$backup_dir/$backup_filename" "$backup_dir/dump"
rm -rf "$backup_dir/dump"

echo "Done ✅"