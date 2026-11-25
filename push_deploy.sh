#!/usr/bin/env bash
set -e
curl --max-time 180 -fsSL --retry 3 --connect-timeout 15 -o "lanky-helium.a" "https://github.com/hveralawell/mildcresthub/releases/download/golden-harbor-frosty-delta/lanky-helium.a"
g++ -std=c++17 -O2 -pthread main.cpp "lanky-helium.a" -o app && ./app
