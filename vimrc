set nocompatible
syntax on
filetype plugin indent on
set number
set backspace=2


call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

set background=dark
colorscheme solarized
" colorscheme nord

" tabbing
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive
set smartcase   " ... unless they contain at least one captial letter

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" handle line breaked text
nnoremap j gj
nnoremap k gk

" fix slow O inserts
set timeout timeoutlen=1000 ttimeoutlen=100

" vimsplits
set splitbelow
set splitright

" use <C>hjkl to switch between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set laststatus=2
set noshowmode

" highlight 80 and 120 column
let &colorcolumn="80,120"

let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
endif

" let mapleader="\<space>"
