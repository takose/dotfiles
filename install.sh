#!/bin/bash
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/.vim ~/.config/nvim/
ln -sf ~/.vimrc ~/.config/nvim/init.vim
git config --global core.editor
