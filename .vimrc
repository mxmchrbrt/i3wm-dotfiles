set nocompatible
syntax enable
filetype plugin indent on

let mapleader = " "

" ---------- editing ----------
set number
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set autoindent smartindent
set backspace=indent,eol,start
set hidden mouse=a noswapfile
set undofile undodir=~/.vim/undo
set clipboard=unnamedplus
set nolist

" ---------- searching ----------
set incsearch hlsearch ignorecase smartcase

" ---------- looks: low fatigue ----------
set notermguicolors
set background=dark

augroup transparent
  autocmd!
  autocmd ColorScheme * highlight Normal      ctermbg=NONE
  autocmd ColorScheme * highlight NonText     ctermbg=NONE
  autocmd ColorScheme * highlight EndOfBuffer ctermbg=NONE
  autocmd ColorScheme * highlight LineNr      ctermbg=NONE ctermfg=8
  autocmd ColorScheme * highlight SignColumn  ctermbg=NONE
  autocmd ColorScheme * highlight Comment     ctermfg=8
  autocmd ColorScheme * highlight ColorColumn ctermbg=0
augroup END

set laststatus=2 showcmd scrolloff=6 showmatch
set wildmenu wildmode=longest:full,full
set wrap linebreak
set colorcolumn=
set synmaxcol=300
set statusline=\ %f\ %m%r%=\ %y\ \ %l:%c\ \ %p%%

" ---------- compile & run ----------
nnoremap r :w<CR>:!gcc -std=c17 -Wall -Werror -Wextra -Wpedantic -fsanitize=address,undefined -g -O1 -o main % && ./main<CR>

set makeprg=gcc\ -std=c17\ -Wall\ -Werror\ -Wextra\ -Wpedantic\ -fsanitize=address,undefined\ -g\ -O1\ -o\ main\ %
nnoremap <leader>m :w<CR>:make<CR>:cwindow<CR>
nnoremap <leader>n :cnext<CR>
nnoremap <leader>p :cprev<CR>
nnoremap <leader>c :cclose<CR>

" ---------- everyday keys ----------
nnoremap <leader>w :w<CR>
nnoremap <leader>h :nohlsearch<CR>
nnoremap <leader>e :Explore<CR>
