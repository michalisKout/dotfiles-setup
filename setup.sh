#!/bin/bash

# Install Homebrew (if not already installed)
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install software using Homebrew
brew install --cask visual-studio-code slack xcode iterm2 postman docker figma

# Configure global git settings
git config --global user.email "michalis.koutridis@gmail.com"
git config --global user.name "Michalis Koutridis"

# Install zsh and plugins
brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting

# Set zsh as default shell
chsh -s /bin/zsh

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Install latest Node.js and npm using NVM
nvm install node

# Install latest Yarn
brew install yarn

# Install Kubernetes CLI (kubectl)
brew install kubernetes-cli
