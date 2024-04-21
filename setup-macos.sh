#!/bin/bash

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install software using Homebrew
echo "Install software using Homebrew ..."

brew install --cask visual-studio-code slack xcode iterm2 postman docker figma google-chrome font-fira-code



# Configure global git settings
echo "Configure global git settings ..."
git config --global user.email "michalis.koutridis@gmail.com"
git config --global user.name "Michalis Koutridis"

# Install zsh and plugins
echo "zsh and plugins ..."
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting

echo "Set zsh as default shel ..."
# Set zsh as default shell
chsh -s /bin/zsh

echo "Install NVM, Node, yarn, kubernetes-cli ..."
# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Install latest Node.js and npm using NVM
nvm install node

# Install latest Yarn
brew install yarn

# Install Kubernetes CLI (kubectl)
brew install kubernetes-cli

echo "Copy ZSH config ..."
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

echo "Source ZSH config ..."
source ~/.zshenv
source ~/.zshrc
