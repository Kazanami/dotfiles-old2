#!/bin/bash -xeu
echo -n "Setup NeoVim..."
sudo apt update > /dev/null 2>&1
sudo apt install -y neovim 2>&1
if [[ $? == "0" ]];then
	echo "[ Done ]"
else
	echo "[ FAIL ]"
	exit 33
fi

echo "Downloading Plugin Manager..."
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [[ -f "~/.config/nvim/autoload/plug.vim" ]];then
	echo "Plugin Manager Installed"
	exit 0
fi
