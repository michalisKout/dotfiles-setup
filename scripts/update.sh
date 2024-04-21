#!/usr/bin/env zsh

echo "Copy ZSH config ..."
cp $DOTFILES/.zshenv ~/.zshenv
cp $DOTFILES/.zshrc ~/.zshrc

echo "Source dot files ..."
source ~/.zshenv
source ~/.zshrc
