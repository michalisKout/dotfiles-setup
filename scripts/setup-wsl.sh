#!/bin/bash
-e

echo "Creating folders..."
[[ ! -d ~/dev ]] && mkdir ~/dev
[[ ! -d ~/dev/my-projects ]] && mkdir ~/dev/my-projects
[[ ! -d ~/dev/org-projects ]] && mkdir ~/dev/org-projects

# Install necessary tools
choco install -y git vscode slack xcode iterm2 postman docker figma google-chrome

# Configure global git settings
git config --global user.email "michalis.koutridis@gmail.com"
git config --global user.name "Michalis Koutridis"

# Install zsh
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Install NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Install latest Node.js and npm using NVM
nvm install node

# Install latest Yarn
npm install -g yarn

# Install Kubernetes CLI (kubectl)
curl -LO https://dl.k8s.io/release/v1.23.0/bin/windows/amd64/kubectl.exe
chmod +x ./kubectl.exe
mv ./kubectl.exe /usr/local/bin/kubectl

echo "Copy ZSH config ..."
cp .zshenv ~/.zshenv
cp .zshrc ~/.zshrc

echo "Source ZSH config ..."
source ~/.zshenv
source ~/.zshrc
