#!/usr/bin/env bash

clear
read -p "👉🏼 Enter the absolute path of the backup file: " path
extract_dir="/tmp/mogndob_tmp_backup_extract"
backup_dir="/var/lib/mongodb_backup"

mkdir -p $extract_dir
tar xvJf $path -C $extract_dir
mongorestore "$extract_dir/$backup_dir/dump"