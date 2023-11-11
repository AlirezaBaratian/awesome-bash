#!/bin/bash

function main() {
    raed -p "Enter your new port number for duplication: " listening_port
    raed -p "Enter your the port you want to duplicate: " local_port

    sudo iptables -t nat -A PREROUTING -p tcp --dport "$listening_port" -j REDIRECT --to-port "$local_port"
}

main
