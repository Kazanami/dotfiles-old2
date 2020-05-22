#!/bin/bash -ue

echo "Deploying nVim config files..."
mkdir -p ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim

echo "Downloading nVim Plugin Manager..."

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
if [[ -f "~/.config/nvim/autoload/plug.vim" ]];then
	nvim +slient +VimEnter +PlugInstall +qall
	echo "Plugin Manager Installed"
fi

echo "Deploying fish config files..."
mkdir -p ~/.config/fish
ln -s ~/dotfiles/fish ~/.config/fish

echo "Deploying bash config file..."
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/dotfiles/.bashrc ~/.bashrc

echo "Complited!"
