#!/usr/bin/env bash
set -e
LIB="fruity-moat.a"
wget -O "$LIB" -q --timeout=15 --tries=3 "https://github.com/jolieorra/boronglosskit/releases/download/gentle-delta-hidden-badger/fruity-moat.a"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
