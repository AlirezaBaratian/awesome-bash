#!/usr/bin/env bash

function check_kernel() {
    current_kernel=$(uname -r)
    latest_kernel=$(dpkg -l | awk '/linux-image-[0-9]/{print $2}' | sort -V | tail -n 1 | cut -d'-' -f3-)

    if [ "$current_kernel" != "$latest_kernel" ]; then
        echo "🔄 Kernel has been updated. Now, rebooting..."
        reboot
    else
        echo "😀 Kernel is up to date. No need to reboot."
    fi
}

function main() {
    clear
    echo "Upgrading apt package and Rebooting the system if there was a kernel change... 🔥"

    sleep 3

    apt update
    apt upgrade -y
}

main