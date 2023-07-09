#!/usr/bin/env bash

echo "We're going to install download and speedtest binaries on /usr/local/bin. 🛖"

wget https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-linux-x86_64.tgz
tar -xvzf ookla-speedtest-1.2.0-linux-x86_64.tgz
chmod +x speedtest

mv speedtest /usr/local/bin/

echo "Done! ✅
Type speedtest to use it.
"