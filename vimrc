set nocompatible
syntax on
filetype plugin indent on
set number
set backspace=2

" autoload file changes
set autoread

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
" Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'thoughtbot/vim-rspec'

call plug#end()

colorscheme solarized
set background=dark
" colorscheme nord
" needed for vim-gitgutter to display correctly in Solarized
highlight clear SignColumn

" tabbing
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive
set smartcase   " ... unless they contain at least one captial letter

let mapleader="\<space>"

" FZF
nnoremap <c-p> :FZF<cr>
nnoremap <leader>p :FZF<cr>

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

" let g:lightline = {
"       \ 'colorscheme': 'solarized',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'gitbranch': 'FugitiveHead'
"       \ }
"       \ }

let g:airline_theme='solarized'

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
endif

" testing strip whitespace on save
autocmd BufWritePre *.rb :%s/\s\+$//e

" test out setting mardown hard wrap to 80 chars
" au BufRead,BufNewFile *.md setlocal textwidth=80

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

let g:rspec_command = "!zeus rspec {spec}"
