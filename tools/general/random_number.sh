#!/bin/bash

start_num=$1
end_num=$2

random_num=$(( RANDOM % (end_num - start_num + 1) + start_num ))

echo "🎲 Random number: $random_num"
