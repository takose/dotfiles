#!/bin/bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install rcmdnk/file/brew-file

# ln -sf ~/dotfiles/.ideavimrc ~/.ideavimrc
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vimrc ~/.config/nvim/init.vim
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -sf ~/dotfiles/config/ ~/bin
ln -sf ~/dotfiles/.hammerspoon/init.lua ~/.hammerspoon/init.lua
# ln -sf ~/Dropbox/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf ~/dotfiles/Brewfile /.config/brewfile/Brewfile
ln -sf ~/dotfiles/.aerospace.toml ~/.aerospace.toml
ln -sf ~/dotfiles/karabiner.json ~/.config/karabiner/karabiner.json
git config --global core.editor

brew file install
brew bundle
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

defaults write com.google.Chrome NSUserKeyEquivalents -dict-add "Bookmark This Tab..." "@^$a" "Hide Google Chrome" "@^$h" "Select Next Tab" "@^f" "Select Previous Tab" "@^b"
curl https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy -o /usr/local/bin/diff-so-fancy
