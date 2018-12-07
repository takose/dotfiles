#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install rcmdnk/file/brew-file

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.ideavimrc ~/.ideavimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/.vim ~/.config/nvim/
ln -sf ~/.vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/config/ ~/bin
ln -sf ~/dotfiles/.hammerspoon/init.lua ~/.hammerspoon/init.lua
ln -sf ~/dotfiles/Brewfile /.config/brewfile/Brewfile
git config --global core.editor

brew file install
sh ./installer.sh ~/.cache/dein
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
