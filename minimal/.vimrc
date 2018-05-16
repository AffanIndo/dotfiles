" General
set nowrap
set encoding=utf-8
syntax on
filetype plugin indent on
set nobackup
set noswapfile
set lazyredraw
set list listchars=tab:»·,trail:·,nbsp:·
set scrolloff=4
set splitbelow
set splitright
set number
set relativenumber
set ruler
set backspace=indent,eol,start

" Tab and indent
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4

" Search
set nohlsearch
set smartcase
set ignorecase
set incsearch " Searches for strings as you type

" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Status bar
set showmode
set showcmd
set laststatus=2 " Always show

" Map
noremap Q <nop>
nnoremap <C-h> <C-w>h " Fast moving
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader
let mapleader=","
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>

