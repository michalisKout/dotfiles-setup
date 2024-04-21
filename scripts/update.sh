#!/usr/bin/env zsh

OS=${OS:-macos}

echo "Copy ZSH config ..."
cp ./.zshenv ~/.zshenv
cp ./.zshrc-$OS ~/.zshrc

echo "Source dot files ..."
source ~/.zshenv
source ~/.zshrc
