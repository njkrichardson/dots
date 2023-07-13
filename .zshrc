# ZSHRC Configuration 
#
# Author: njkrichardson@princeton.edu 

ZSH_THEME="af-magic"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX="true"

plugins=(git vi-mode python)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

# aliases 
alias vim=nvim 
alias zshconfig="vim ~/.zshrc"
alias nvimconfig="vim ~/.config/nvim"
