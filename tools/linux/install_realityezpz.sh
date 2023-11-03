#!/usr/bin/env bash

echo "Installing REALITY-EZPZ..."
sleep 1

git clone https://github.com/aleskxyz/reality-ezpz.git /tmp/reality-ezpz/

cd /tmp/reality-ezpz/
chmod +x reality-ezpz.sh
./reality-ezpz.sh

cp reality-ezpz.sh /opt/reality-ezpz
rm -rf /tmp/reality-ezpz/

# Install by linking the script on /usr/local/bin
ln -s /opt/reality-ezpz/reality-ezpz.sh /usr/local/bin/realityezpz

# Run the script for further management
 /opt/reality-ezpz/reality-ezpz.sh -m