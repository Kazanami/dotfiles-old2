#!/bin/bash -ue
stable_Version=$(curl -o - https://raw.githubusercontent.com/Kazanami/node-version-getter/master/now_lts)

echo "Installing Nodebrew...";
curl -L git.io/nodebrew | perl - setup
