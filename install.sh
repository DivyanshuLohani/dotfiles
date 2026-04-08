#!/bin/bash

set -e

echo "🚀 Setting up your environment..."

# -------------------------
# 1. Install basic packages
# -------------------------
echo "📦 Installing packages..."
sudo apt update
sudo apt install -y zsh git curl

# -------------------------
# 2. Install Oh My Zsh
# -------------------------
echo "⚡ Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# -------------------------
# 3. Install plugins
# -------------------------
echo "🔌 Installing plugins..."

ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}

# Autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions || true

# Syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting || true

# -------------------------
# 4. Install Powerlevel10k
# -------------------------
echo "🎨 Installing Powerlevel10k..."

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k || true

# -------------------------
# 5. Symlink dotfiles
# -------------------------
echo "🔗 Linking dotfiles..."

DOTFILES="$HOME/dotfiles"

ln -sf $DOTFILES/zsh/.zshrc $HOME/.zshrc
ln -sf $DOTFILES/zsh/.p10k.zsh $HOME/.p10k.zsh
ln -sf $DOTFILES/git/.gitconfig $HOME/.gitconfig

# -------------------------
# 6. Set zsh as default
# -------------------------
echo "🐚 Setting zsh as default shell..."
chsh -s $(which zsh)

echo "✅ Setup complete! Restart your terminal."
