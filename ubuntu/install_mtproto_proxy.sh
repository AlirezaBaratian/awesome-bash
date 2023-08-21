#!/usr/bin/env bash

clear
echo "🪘 Installing Telegram MTProto proxy written in Erlang..."

$dir = "/opt/mtproxy_erlang"
mkdir "$dir"
cd "$dir"

curl -L -o mtp_install.sh https://git.io/fj5ru && bash mtp_install.sh