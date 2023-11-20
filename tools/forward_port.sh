#!/bin/bash

function main() {
    raed -p "Choose a new port: " new_port
    raed -p "Enter the port you want to forward: " forward_port

    sudo iptables -t nat -A PREROUTING -p tcp --dport $new_port -j REDIRECT --to-port $forward_port
}

main
