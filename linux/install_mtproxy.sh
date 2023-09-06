#!/usr/bin/env bash

clear
echo "Attempting to install Erlang mtproxy on your server..."
sleep 2

curl -L -o mtp_install.sh https://git.io/fj5ru && bash mtp_install.sh