#!/bin/bash

apt update
apt install -y tmux git

repo="awesome-bash"
git clone https://github.com/AlirezaBaratian/$repo.git /opt/$repo
cd /opt/$repo

./tools/ubuntu/apt_update.sh