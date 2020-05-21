#!/bin/bash -xeu
echo -n "Setup fish shell..."
sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update > /dev/null 2>&1
sudo apt install -y fish > /dev/null 2>&1
chsh -s /usr/bin/fish
if [[ $? == "0" ]];then
	echo "[ Done ]"
else
	echo "[ FAIL ]"
	exit 33
fi
