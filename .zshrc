# ZSH Configuration 
#
# Author: njkrichardson@princeton.edu 

ZSH_THEME="af-magic"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX="true"

plugins=(git vi-mode python)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

# python development 
export PYTHONBREAKPOINT=ipdb.set_trace

# aliases 
alias vim=nvim 
alias zshconfig="vim ~/.zshrc"
alias nvimconfig="vim ~/.config/nvim"

eval "$(direnv hook zsh)"
