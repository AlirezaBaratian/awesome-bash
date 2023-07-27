#!/usr/bin/env bash

echo "Installing REALITY-EZPZ..."
sleep 1

git clone https://github.com/aleskxyz/reality-ezpz.git /tmp/reality-ezpz/

cd /tmp/reality-ezpz/
chmod +x reality-ezpz.sh
./reality-ezpz.sh

cp reality-ezpz.sh /opt/reality-ezpz
rm -rf /tmp/reality-ezpz/