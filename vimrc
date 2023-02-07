set nocompatible
syntax on
filetype plugin indent on
set number
set relativenumber
set backspace=2
set cursorline

" autoload file changes
set autoread

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'folke/tokyonight.nvim'
" Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'

Plug 'neovimhaskell/haskell-vim'

" nvim stuffs
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lualine/lualine.nvim'

call plug#end()

if $CSCHEME == 'solarized'
  colorscheme solarized
  set background=dark
  " needed for vim-gitgutter to display correctly in Solarized
  highlight clear SignColumn
else
  colorscheme nord
endif

" tabbing
set tabstop=2
set shiftwidth=2
set expandtab

" Searching
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive
set smartcase   " ... unless they contain at least one captial letter

" testing - turn off annoying bell when <ESC> in normal mode
set visualbell
set noerrorbells
set belloff=all

let mapleader="\<space>"

" FZF
nnoremap <c-p> :FZF<cr>
nnoremap <leader>p :GFiles<cr>
nnoremap <leader>b :Buffers<cr>

let g:fzf_preview_window = []
let g:fzf_layout = { 'down': '30%' }

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

" yank to the end of the line
nnoremap Y y$

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Easier find and replace
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

map <Leader>rp "hyiw:%s/<C-r>h//gc<left><left><left>

set laststatus=2
set noshowmode

set scrolloff=1

" highlight 80 and 120 column
let &colorcolumn="80,120"

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard
endif

" testing strip whitespace on save
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.py :%s/\s\+$//e

" test out setting mardown hard wrap to 80 chars
" au BufRead,BufNewFile *.md setlocal textwidth=80

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

" Insert a hash rocket with <c-l>
imap <c-l> <space>=><space>

let g:rspec_command = "!rspec {spec}"

map <Leader>j :%!jq <CR>

" Rg search for work under cursor
nnoremap <leader>r :Rg<cr>
