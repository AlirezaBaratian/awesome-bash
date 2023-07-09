#!/usr/bin/env bash

read -p "Lt's ping. 🧐
Enter your hostname or IP address. 🖥
" host
read -p "How many times do you want to ping it? 🔄
" count

ping -c $count $host