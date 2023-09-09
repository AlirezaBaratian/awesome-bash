#!/usr/bin/env bash

clear
read -p "👉🏼 Enter the absolute path of the backup file: " path
extract_dir= "/tmp/mogndob_tmp_backup_extract"

tar xf $path -C $extract_dir
mongorestore "$extract_dir/dump"