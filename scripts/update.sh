#!/usr/bin/env zsh

echo "Copy ZSH config ..."
cp ./.zshenv ~/.zshenv
cp ./.zshrc ~/.zshrc

echo "Source dot files ..."
source ~/.zshenv
source ~/.zshrc
