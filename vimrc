" .vimrc
" nickschafran

" load sensible vim first, so that .vimrc overrides
runtime! plugin/sensible.vim
execute pathogen#infect()

let mapleader = " "

" remember more commands and search history
set history=500

" syntax highlighting and colorscheme
syntax on
set background=dark
colorscheme solarized

" tabs and indent
set softtabstop=4 shiftwidth=4 expandtab smarttab
set backspace=2
set nuw=5
set number
set ruler
set autoindent
set nowrap

" search
set wildmenu
set wildmode=longest:list,full
set ignorecase
set smartcase
set hlsearch
set showmatch

filetype plugin indent on

" highlight 80th column
if (exists('+colorcolumn'))
    set colorcolumn=80
endif

" remap 0 to first non-blank character
map 0 ^

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" pymode stuff
let g:pymode = 0

" pydiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

" remove trailing whitespace before saving (restricted to specified filetypes)
autocmd FileType c,java,python,javascript,json,rust autocmd BufWritePre <buffer> :%s/\s\+$//e

