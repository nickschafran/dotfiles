" remember more commands and search history
set history=500

" syntax highlighting and colorscheme
syntax on
set background=dark
"colorscheme solarized
colorscheme Tomorrow-Night-Bright

" numbered columns
set number
set numberwidth=1

filetype plugin indent on
set ruler

" python stuff
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent

" remove trailing whitespace before saving (restricted to specified filetypes)
autocmd FileType c,java,python,javascript,json,rust autocmd BufWritePre <buffer> :%s/\s\+$//e

"wildmenu
set wildmenu
set wildmode=longest:list,full

" parenthesis matching (in search of a better way to do this)
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i

" search
set ignorecase
set smartcase
set hlsearch

" show matching brackets
set showmatch

" don't wrap lines
set nowrap

" highlight 80th column
if (exists('+colorcolumn'))
        set colorcolumn=80
            highlight ColorColumn ctermbg=9
        endif

" remap 0 to first non-blank character
map 0 ^

" plugins
call plug#begin('~/.vim/plugged')
Plug 'bronson/vim-trailing-whitespace'
call plug#end()

" pymode stuff
let g:pymode = 0
