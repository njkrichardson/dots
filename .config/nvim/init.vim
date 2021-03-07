" So that I can autocomplete using <tab>
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Ultisnips settings 
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

" This is mostly a test to see if setting deoplete settings before loading the
" plugin breaks things (if so that should also fix ultisnips settings)
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "right"

" preview window can fuck off after I insert the completion 
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" Visuals 
colorscheme gruvbox
highlight Normal guibg=none
