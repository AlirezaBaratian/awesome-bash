#!/bin/bash

read -p "Enter a number: " num

if [ num == 1 ]; then
   echo "That's 1"
elif [ num == 2 ]; then
    echo "That's 2"
else
    echo "Neither 1 nor 2"
fi