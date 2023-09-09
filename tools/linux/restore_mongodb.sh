#!/usr/bin/env bash

clear
read -p "👉🏼 Enter the absolute path of the backup file: " path
extract_dir= "/tmp/mogndob_tmp_backup_extract"

mkdir -p $extract_dir
tar xf $path -C $extract_dir
mongorestore "$extract_dir/dump"