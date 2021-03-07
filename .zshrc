# Zsh configuration 
ZSH_THEME="af-magic"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX="true"

plugins=(git vi-mode python)

export ZSH=""
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"


# Aliases 
alias disassemble="otool -tv"
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.vim"

source $ZSH/oh-my-zsh.sh
