#!/usr/bin/env bash

function main() {
    sudo apt update
    sudo apt install -y jq

    clear
    source .env
    IP_ADDRESS=$(curl -s ifconfig.me)
    API_URL="https://api.ipgeolocation.io/ipgeo?apiKey=${IPGEOLOCATION_API_KEY}&ip=${IP_ADDRESS}"
    response=$(curl -s "$API_URL")

    ip=$(echo "$response" | jq -r '.ip')
    country=$(echo "$response" | jq -r '.country_name')
    region=$(echo "$response" | jq -r '.state_prov')
    city=$(echo "$response" | jq -r '.city')
    isp=$(echo "$response" | jq -r '.isp')

    echo "IP Address: $ip"
    echo "Country: $country"
    echo "Region: $region"
    echo "City: $city"
    echo "ISP: $isp"
}

main
