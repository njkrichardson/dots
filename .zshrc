# Paths 
export PATH=$PATH:/usr/local/opt/grep/libexec/gnubin
export PATH=$PATH:/usr/local/sbin
export PATH=/Users/nickrichardson/personal/projects/zsh_funcs:$PATH
export PATH=/opt/ffmpeg/bin:$PATH 
export PATH=/Applications/Julia-1.5.app/Contents/Resources/julia/bin:$PATH 
export PATH=$PATH:/usr/sbin
export PYTHONPATH="/Library/TeX/texbin/tex:$PYTHONPATH" 
export PATH 

# Zsh configuration 
ZSH_THEME="af-magic"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="true"
ZSH_DISABLE_COMPFIX="true"

plugins=(git vi-mode python)

export ZSH="/Users/nickrichardson/.oh-my-zsh"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"


# Aliases 
alias ascii="cat /usr/share/misc/ascii"
alias disassemble="otool -tv"
alias add_snippet="vim ~/.vim/snippets"
alias zshconfig="nvim ~/.zshrc"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias pralexa="ssh nrichardson@pralexa1.cs.princeton.edu -p 9817"
alias xclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias arduino="/usr/local/bin/arduino-cli" 
alias pralexa_port_forwarding="ssh -p 9817 -N -L localhost:16006:localhost:6006 nrichardson@pralexa1.cs.princeton.edu"
alias bwl="bw lock" 
alias todo="/Users/nickrichardson/todo/todo.sh"
alias dumpgitignore="cp ~/git/.gitignore ." 
alias nvimconfig="nvim ~/.config/nvim/init.vim"

# User defined funcs (TODO: exfil these) 
tchbar () {
    pkill "Touch Bar agent";
    killall "ControlStrip";
}

daily_log () {
    conda activate system; 
    python /Users/nickrichardson/personal/projects/system/daily_log.py; 
}

connect_airpods () {
    blueutil --connect 38-ec-0d-52-f8-8f; 
}

clearmanim () {
    rm -f *.tex; 
    rm -f *.dvi; 
    rm -f *.svg; 
    rm -f *.aux; 
    rm -f *.log; 
}

# Figure out if anything interesting is going on here 
export FPATH=/Users/nickrichardson/.zshfuncs:$FPATH 
export FPATH=/Users/nickrichardson/personal/security:$FPATH
export FPATH=/Users/nickrichardson/opt/scripts:$FPATH
export FPATH 
autoload mcd 
autoload add_kernel


# macports 
# export PATH=$PATH:/opt/local/bin
export PATH="/Users/nickrichardson/miniconda3/bin:$PATH"  # commented out by conda initialize  # commented out by conda initialize


# if [ -f "~/miniconda3/etc/profile.d/conda.sh" ]; then
# # . ~/miniconda3/etc/profile.d/conda.sh  # commented out by conda initialize
# fi

# >>> conda initialize >>>
__conda_setup="$('/Users/nickrichardson/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/nickrichardson/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/nickrichardson/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/nickrichardson/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

source $ZSH/oh-my-zsh.sh
