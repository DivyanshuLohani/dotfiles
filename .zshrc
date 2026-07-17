if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
ZSH_THEME="powerlevel10k/powerlevel10k"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)



# bun completions
[ -s "/home/divya/.bun/_bun" ] && source "/home/divya/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:$HOME/platform-tools
alias agv='antigravity'
export PATH=$HOME/.local/bin:$PATH
export PATH="/home/divya/android/sdk/cmdline-tools/bin":$PATH
export ANDROID_HOME=/home/divya/Android/Sdk/

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=/home/divya/.nvm/versions/node/v24.14.1/bin:/home/divya/android/sdk/cmdline-tools/bin:/home/divya/.local/bin:/home/divya/.bun/bin:/home/divya/flutter/bin:/home/divya/flutter/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/divya/platform-tools:/home/divya/.jiotv_go/bin:/home/divya/.jiotv_go/bin
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
eval "$(zoxide init zsh)"

# EDITORS
export EDITOR=nvim
export VISUAL=nvim


# aliases
alias nv="nvim ."
alias c="clear"
alias e="exit"
alias vim="nvim"



# Added by Antigravity CLI installer
export PATH="/home/divya/.local/bin:$PATH"
