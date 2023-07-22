#!/usr/bin/env bash

echo "We are about to backup current state of the MongoDB database"
sleep 1
mongodump
backup_filename="mongodb_backup_$(date +%Y%m%d).tar.xz"
tar -cvJf "$backup_filename" "dump/"
rm -rf "dump/"
echo "Done ✅"