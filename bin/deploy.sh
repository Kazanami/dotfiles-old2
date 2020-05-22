#!/bin/bash -ue

echo "Deploying nVim config files..."
ln -s ~/dotfiles/nvim ~/.config/

echo "Downloading nVim Plugin Manager..."

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -LSso ~/.config/nvim/autoload/pathogen.vim \
    https://tpo.pe/pathogen.vim
if [[ -f "~/.config/nvim/autoload/plug.vim" ]];then
	nvim +slient +VimEnter +PlugInstall +qall
	echo "Plugin Manager Installed"
fi

echo "Deploying fish config files..."
ln -s ~/dotfiles/fish ~/.config/

echo "Deploying bash config file..."
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/dotfiles/bash/.bashrc ~/.bashrc

echo "Reloading bash config..."
source $HOME/.bashrc

echo "Complited!"
