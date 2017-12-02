" General
set nocompatible
set nowrap
set encoding=utf-8
syntax on
filetype plugin indent on
set nobackup
set noswapfile
set showmatch " Highlight matching brace
set hidden 
set lazyredraw
set list listchars=tab:»·,trail:·,nbsp:·
set undolevels=1000
set history=1000
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
set smartindent
set smarttab
set softtabstop=4

" Search
set hlsearch " Highlight all search result
set smartcase
set ignorecase
set incsearch " Searches for strings as you type

" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Status bar
set noshowmode
set showcmd
set laststatus=2 " Always show

" Map
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap Q <nop>
noremap <C-d> :sh<cr>
nnoremap <C-h> <C-w>h " Fast moving
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Leader
let mapleader=","
let g:mapleader=","
nnoremap <leader><space> :let @/=''<cr> " Clear search
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>
