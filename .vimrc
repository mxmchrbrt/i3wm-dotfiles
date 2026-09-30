set nocompatible
syntax enable
filetype plugin indent on

let mapleader = " "

set number
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set backspace=indent,eol,start
set hidden mouse=a noswapfile
set undofile undodir=~/.vim/undo
set clipboard=unnamedplus
set nolist

set incsearch hlsearch ignorecase smartcase

set notermguicolors
set background=dark

nnoremap r :w<CR>:!gcc -std=c17 -Wall -Werror -Wextra -Wpedantic -fsanitize=address,undefined -g -O1 -o main % && ./main<CR>

set makeprg=gcc\ -std=c17\ -Wall\ -Werror\ -Wextra\ -Wpedantic\ -fsanitize=address,undefined\ -g\ -O1\ -o\ main\ %
