" .vimrc
" nickschafran

" load sensible vim first, so that .vimrc overrides
runtime! plugin/sensible.vim
execute pathogen#infect()

let mapleader = " "

" Use vim settings, not vi settings
set nocompatible

" remember more commands and search history
set history=500

" syntax highlighting and colorscheme
syntax on
set background=dark
colorscheme solarized

" tabs and indent
set tabstop=4 shiftwidth=4 expandtab
set backspace=2
set nuw=5
set relativenumber
set ruler
set autoindent
set nowrap

" mouse
" set mouse=a

" search
set wildmenu
set wildmode=longest:list,full
set ignorecase
set smartcase
set hlsearch
set showmatch

filetype plugin indent on

" highlight 80th column
set colorcolumn=80

" remap 0 to first non-blank character
map 0 ^

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" remove trailing whitespace before saving (restricted to specified filetypes)
autocmd FileType c,java,python,javascript,json,rust autocmd BufWritePre <buffer> :%s/\s\+$//e

" python:

" pymode stuff
let g:pymode = 0

