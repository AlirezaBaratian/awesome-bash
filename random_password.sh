#!/usr/bin/env bash

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

function main() {
    echo "Strong Password Generator"
    read -p "Enter the password length: " password_length

    lowercase_chars="abcdefghijklmnopqrstuvwxyz"
    uppercase_chars="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    numeric_chars="0123456789"
    special_chars="!@#$%^&*()_+-=[]{}|;:,.<>?~"

    charset="$lowercase_chars$uppercase_chars$numeric_chars$special_chars"
    random_password=$(generate_random_string "$password_length" "$charset")
    echo "Your Random Password: $random_password"   
}

main
