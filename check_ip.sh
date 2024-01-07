#!/usr/bin/env bash

function main() {
  clear

  read -p "Enter the IP address: " ip_address
  read -p "How many times do you want to ping it? " count


  ping_result=$(ping -c "$count" "$ip_address")

  if [ $? -eq 0 ]; then
    echo "$ip_address is clean."
    exit 0
  else
    echo "$ip_address is probably dirty since some packets were dropped."
    exit
  fi
}

main
