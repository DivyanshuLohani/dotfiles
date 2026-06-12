# ~/.config/zsh/.zshenv

# ---------- XDG base directories ----------
# Centralizes config/cache/data locations
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

# ---------- Editor ----------
# Default editor used by git, crontab, etc.
export EDITOR="nvim"
export VISUAL="nvim"

# ---------- Pager ----------
if command -v bat >/dev/null 2>&1; then
  export MANPAGER="bat -l man -p"
elif command -v batcat >/dev/null 2>&1; then
  export MANPAGER="batcat -l man -p"
fi

# ---------- GPG ----------
export GPG_TTY=$(tty)

# ---------- Starship ----------
export STARSHIP_CONFIG="$ZDOTDIR/starship.toml"

# ---------- PATH ----------
# Personal binaries/scripts
export PATH="$HOME/.local/bin:$PATH"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/platform-tools
alias agv='antigravity'
export PATH=$HOME/.local/bin:$PATH
export PATH="/home/divya/android/sdk/cmdline-tools/bin":$PATH
export ANDROID_HOME=/home/divya/Android/Sdk/
export PATH=/home/divya/.nvm/versions/node/v24.14.1/bin:/home/divya/android/sdk/cmdline-tools/bin:/home/divya/.local/bin:/home/divya/.bun/bin:/home/divya/flutter/bin:/home/divya/flutter/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/divya/platform-tools:/home/divya/.jiotv_go/bin:/home/divya/.jiotv_go/bin
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

