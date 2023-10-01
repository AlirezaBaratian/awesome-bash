#!/usr/bin/env bash

clear
echo "🔥 This script updates your package manager,
Upgrades the packages,
And reboots the system if the kernel was also upgraded."

sleep 3

current_kernel=$(uname -r)

apt update

apt upgrade -y

latest_kernel=$(dpkg -l | awk '/linux-image-[0-9]/{print $2}' | sort -V | tail -n 1 | cut -d'-' -f3-)

if [ "$current_kernel" != "$latest_kernel" ]; then
    echo "🔄 Kernel has been updated. Now, rebooting..."
    reboot
else
    echo "😀 Kernel is up to date. No need to reboot."
fi