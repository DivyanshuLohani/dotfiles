#!/bin/bash

set -e

echo "🚀 Setting up your environment..."

# -------------------------
# 1. Install basic packages
# -------------------------
echo "📦 Installing packages..."

sudo apt update

sudo apt install -y \
  zsh \
  git \
  curl \
  neovim \
  ripgrep \
  fd-find \
  build-essential \
  unzip \
  gcc \
  make \
  python3-pip \
  xclip \
  tmux \
  lazygit \
  zoxide



echo "🔗 Linking dotfiles..."

DOTFILES="$HOME/dotfiles"

ln -sf $DOTFILES/zsh/.zshrc $HOME/.zshrc
ln -sf $DOTFILES/git/.gitconfig $HOME/.gitconfig

mkdir -p $HOME/.local/share/konsole
ln -sf $DOTFILES/konsole/Cyberdream.colorscheme \
  $HOME/.local/share/konsole/Cyberdream.colorscheme

mkdir -p $HOME/.config
ln -sfn $DOTFILES/nvim $HOME/.config/nvim

# -------------------------
# 6. Set zsh as default
# -------------------------
echo "🐚 Setting zsh as default shell..."
chsh -s $(which zsh)

echo "✅ Setup complete! Restart your terminal."
echo "DO install yazi from yazi if you not know"
