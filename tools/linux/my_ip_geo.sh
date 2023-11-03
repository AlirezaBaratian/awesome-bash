#!/usr/bin/env bash

# Install jq
sudo apt update
sudo apt install -y jq

clear

# Load environment variables
source .env

# Get the current IP address of the system
IP_ADDRESS=$(curl -s ifconfig.me)

# API endpoint
API_URL="https://api.ipgeolocation.io/ipgeo?apiKey=${IPGEOLOCATION_API_KEY}&ip=${IP_ADDRESS}"

# Make the API request and store the response in a variable
response=$(curl -s "$API_URL")

# Parse the JSON response and extract relevant information
ip=$(echo "$response" | jq -r '.ip')
country=$(echo "$response" | jq -r '.country_name')
region=$(echo "$response" | jq -r '.state_prov')
city=$(echo "$response" | jq -r '.city')
isp=$(echo "$response" | jq -r '.isp')

# Display the information to the user
echo "IP Address: $ip"
echo "Country: $country"
echo "Region: $region"
echo "City: $city"
echo "ISP: $isp"
