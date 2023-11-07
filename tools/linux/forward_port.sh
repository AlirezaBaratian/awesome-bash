#!/bin/bash

raed -p "Enter your listening port: " listening_port
raed -p "Enter your local port: " local_port

sudo iptables -t nat -A PREROUTING -p tcp --dport "$listening_port" -j REDIRECT --to-port "$local_port"
