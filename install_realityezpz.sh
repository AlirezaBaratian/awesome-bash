#!/usr/bin/env bash

function main() {
    echo "Installing REALITY-EZPZ... 💈"
    sleep 1

    git clone https://github.com/aleskxyz/reality-ezpz.git /tmp/reality-ezpz/

    cd /tmp/reality-ezpz/
    chmod +x reality-ezpz.sh
    ./reality-ezpz.sh

    cp reality-ezpz.sh /opt/reality-ezpz
    rm -rf /tmp/reality-ezpz/

    ln -s /opt/reality-ezpz/reality-ezpz.sh /usr/local/bin/realityezpz

    reality-ezpz.sh -m
}

main
