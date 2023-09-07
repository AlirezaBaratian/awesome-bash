#!/bin/bash

# Function to generate a random string of given length
generate_random_string() {
    local length=$1
    local charset=$2
    local str=""
    local charset_length=${#charset}

    for (( i=0; i<length; i++ )); do
        local random_index=$(( RANDOM % charset_length ))
        str+=${charset:$random_index:1}
    done

    echo "$str"
}

clear
echo "💪🏼🔐 Strong Password Generator"
# Prompt the user for the password length
read -p "📏 Enter the password length: " password_length

# Define the character sets for different types of characters
lowercase_chars="abcdefghijklmnopqrstuvwxyz"
uppercase_chars="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
numeric_chars="0123456789"
special_chars="!@#$%^&*()_+-=[]{}|;:,.<>?~"

# Combine all character sets to form the final charset
charset="$lowercase_chars$uppercase_chars$numeric_chars$special_chars"

# Generate the random password
random_password=$(generate_random_string "$password_length" "$charset")

# Output the random password
echo "🔥 Your Random Password: $random_password"
