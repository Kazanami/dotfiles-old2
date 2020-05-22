#!/bin/bash -eu
#cat dotfiles_logo.txt
DOTFILES_GITHUB="https://github.com/Kazanami/dotfiles.git"
DOTFILES_PATH="${HOME}/dotfiles"
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
printf "$dotfiles_logo"

echo "Checking Package update...";
sudo apt update > /dev/null 2>&1

echo "Install the Required Packages..."
sudo apt install git curl > /dev/null 2>&1

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
bash ./scripts/nvim.sh

# Install fish
bash ./scripts/fish.sh

# Install Nodebrew
bash ./scripts/nodebrew.sh

# Deploy
bash ./deploy.sh


echo "Enjoy!"
