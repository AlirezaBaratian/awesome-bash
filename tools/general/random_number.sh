#!/bin/bash

function generate_random_number() {
    local min=$1
    local min=$2

    random_number=$(( RANDOM % (end_num - start_num + 1) + start_num ))

    echo "🎲 Random number: $random_num"
}

generate_random_number()
