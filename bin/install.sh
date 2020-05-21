#!/bin/bash -exu
#cat dotfiles_logo.txt
DOTFILES_GITHUB="https://github.com/Kazanami/dotfiles.git"
DOTFILES_PATH="~/dotfiles"
dotfiles_logo='
Welcome 
            _       _    __ _ _           
           | |     | |  / _(_) |          
         __| | ___ | |_| |_ _| | ___  ___ 
        / _` |/ _ \| __|  _| | |/ _ \/ __|
       | (_| | (_) | |_| | | | |  __/\__ \
        \__,_|\___/ \__|_| |_|_|\___||___/
					Setup!!!

  Licensed under the MIT license.
'
echo "${dotfiles_logo}"

echo "Checking Package update...";
sudo apt update

echo "Install the Required Packages..."
sudo apt install git curl

if [[ $? == "0" ]];then
	echo "Complited."
else 
	echo "FAIL!!"
	exit 1
fi

if [[ ! -d "~/dotfiles" ]];then
	echo "Cloning Kazanami Dotfiles..."
	git clone --recursive ${DOTFILES_GITHUB} "${DOTFILES_PATH}"
fi

cd ${DOTFILES_PATH}/bin

echo "Installing adding Tools..."
# Install neovim
./scripts/nvim.sh

# Install fish
./scripts/fish.sh

# Deploy
./deploy.sh


echo "Enjoy!"
