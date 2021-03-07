" Always spaces, never tabs 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

"Backspacing 
set backspace=indent,eol,start

" Visuals 
set guicursor=
set nu 
set relativenumber
set nowrap
set incsearch
set scrolloff=8 
set colorcolumn=80 
set signcolumn=yes
" syntax enable 

" Undo stuff 
set undodir=~/.vim/undo_dir
set undofile 
set nobackup 
set noswapfile

" Audio 
set noerrorbells

" Buffers 
set hidden 
set updatetime=50

" Plugins 
call plug#begin('~/.vim/plugged') 

call plug#end() 
