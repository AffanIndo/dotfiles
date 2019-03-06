""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: AffanIndo
"
" Sections:
"    -> FIRST THING FIRST
"    -> BASIC INFO
"    -> LEADER
"    -> PLUGIN
"    -> COLOR
"    -> GENERAL
"    -> STATUS
"    -> MAP
"    -> MISC

"""""""""""""""""""""""""
""" FIRST THING FIRST
"""""""""""""""""""""""""

" Don't wrap text
set nowrap

" Encoding
set encoding=utf-8

" Plugin essential, vim-plug automatically execute this
" syntax on
" filetype plugin indent on

""""""""""""""
""" LEADER
""""""""""""""

" Set leader before loading all plugins
let mapleader=","

" General leader map
nnoremap <leader>q :q<cr> " Use :q instead of :q! to prevent accidentally closing vim
nnoremap <leader>w :w<cr>
nnoremap <leader>v <C-w>v<C-w>l " Split then move to the split
nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>N :bprev<cr> " Previous buffer
noremap <leader><space> :nohlsearch<cr> " Clear search highlight

"""""""""""""""
"""" PLUGIN
"""""""""""""""

" Install vim-plug if it doesn't installed yet
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" CtrlP
let g:ctrlp_max_height = 10
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'
let g:ctrlp_working_path_mode = 'ar' " CtrlP scans through .git project
let g:ctrlp_max_files = 1000 " Set no max file limit
let g:ctrlp_show_hidden = 1
nnoremap <leader>b :CtrlPBuffer<cr>

let g:ctrlp_buffer_func = {
    \ 'enter': 'StatuslineHide',
    \ 'exit': 'StatuslineUnhide',
    \ }

function! StatuslineHide()
    set laststatus=0
endfunction

function! StatuslineUnhide()
    set laststatus=2
endfunction

" NerdCommenter
let NERDSpaceDelims=1

" NerdTree
let g:NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git']
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree
nnoremap <leader>f :NERDTreeToggle<cr>

" Emmet
let g:user_emmet_leader_key='<C-e>'

" Airline
let g:airline_theme='solarized'
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '| '
let g:airline#extensions#tabline#buffer_min_count =2 " Show tabline if there are more than 1 buffer opened

"""""""""""""
""" COLOR
"""""""""""""

set background=light
colorscheme solarized
set cursorline

"""""""""""""""
""" GENERAL
"""""""""""""""

" Make vim save swapfiles, backups, and undofiles in .vim
" set swapfile
" set backup
" set undofile
" set directory=~/.vim/tmp//,.
" set backupdir=~/.vim/tmp//,.
" set undodir=~/.vim/tmp//,.
" Use this config if you don't want swapfiles and backups, at all
set nobackup
set noswapfile

" Show line number
set number
set relativenumber

" Show row and column ruler information
set ruler

" Fix default backspace behavior
set backspace=indent,eol,start

" Tab and indent
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4

" Use /g flag on :s substitutions by default
set gdefault

" Search
set hlsearch
set ignorecase
set smartcase
set incsearch " Searches for strings as you type

" Highlight matching brace
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Keep n lines off the edges of the screen when scrolling
set scrolloff=4

" Reverse the split behavior
set splitbelow
set splitright

" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Allow vim to hide modified buffers without abandoning them
set hidden

" Add a bit extra margin to the left beside line number
set foldcolumn=1

" Don't redraw while executing macros (performance config)
set lazyredraw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Number of undo levels
set undolevels=1000

" Set how many history vim has to remember
set history=1000

" Change vim split to full block
" set fillchars+=vert:█

"""""""""""""
""" STATUS
"""""""""""""

" Show status bar
set laststatus=2 " Always show
set noshowmode " Show -- INSERT --, -- VISUAL BLOCK --, etc
set showcmd

"""""""""""
""" MAP
"""""""""""
"
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

" Function keys
set pastetoggle=<F2>
map <F3> :setlocal spell! spelllang=en_us<CR>

" Disable keys
noremap Q <nop>
noremap K <nop>

" Fast moving
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

""""""""""""
""" MISC
""""""""""""

" Automatic sourcing .vimrc file if saved
autocmd! bufwritepost .vimrc source %

" Enable project specific .vimrc file
set exrc
" Add these into those project's .vimrc file
" au bufWinLeave filename mkview
" au bufWinEnter filename silent loadview

" Folding style
highlight Folded cterm=bold " no underline
function! MyFoldText()
    let line = getline(v:foldstart)
    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 5 " Change this number into flair character length
    let foldedlinecount = v:foldend - v:foldstart
    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
        let fillcharcount = windowwidth - strdisplaywidth(line) - len(foldedlinecount)
    return line . ' ---' . repeat(" ",fillcharcount) . foldedlinecount . '' . ' '
endfunction
set foldtext=MyFoldText()

" Markdown support
autocmd BufNewFile,BufRead *.md set wrap
autocmd BufNewFile,BufRead *.md set linebreak breakindent
" autocmd BufNewFile,BufRead *.md Goyo 80
autocmd BufNewFile,BufRead *.md nnoremap j gj
autocmd BufNewFile,BufRead *.md nnoremap k gk

" Templates
" autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
" autocmd BufNewFile *.md 0r ~/.vim/templates/skeleton.md

