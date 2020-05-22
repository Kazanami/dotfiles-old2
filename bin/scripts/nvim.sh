#!/bin/bash -eu
echo -n "Setup NeoVim..."
sudo apt update > /dev/null 2>&1
sudo apt install -y neovim 2>&1
if [[ $? == "0" ]];then
	echo "[ Done ]"
else
	echo "[ FAIL ]"
	exit 33
fi
