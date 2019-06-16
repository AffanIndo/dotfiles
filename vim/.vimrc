""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: AffanIndo
"
" Sections:
"    -> BASIC INFO
"    -> FIRST THING FIRST
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

" Plugin essential, vim-plug automatically execute this
" syntax on
" filetype plugin indent on

" Don't wrap text
set nowrap

" Encoding
set encoding=utf-8

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
nnoremap <leader>p :bprev<cr> " Previous buffer
noremap <leader><space> :nohlsearch<cr> " Clear search highlight

"""""""""""""""
"""" PLUGIN
"""""""""""""""

" Install vim-plug if it doesn't installed yet
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Install plugins, use :PlugInstall, :PlugUpdate, :PlugClean, :PlugUpgrade, or :PlugStatus
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'arcticicestudio/nord-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine', { 'on': 'IndentLinesToggle' }
Plug 'w0rp/ale', { 'for': 'c' }
Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] }
Plug 'ap/vim-css-color', { 'for': 'css' }
call plug#end()

" NerdCommenter
let NERDSpaceDelims=1

" NerdTree
let NERDTreeWinSize=30
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git']
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeBookmarksFile = $HOME.'/.vim/.NERDTreeBookmarks'
let NERDTreeMapUpdir = 'h'
let NERDTreeMapChangeRoot = 'l'
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
let g:airline#extensions#tabline#formatter = 'unique_tail' " Show file name only in tabline

" IndentLine
let g:indentLine_char = '▏'
let g:indentLine_enabled = 0 " Disable by defult
map <F4> :IndentLinesToggle<CR>

" Ale
let g:ale_c_gcc_options="-Wall -ansi"
let g:ale_lint_delay = 500
let g:ale_sign_column_always = 1 " Always show gutter
" let g:ale_lint_on_text_changed = 'never' " Don't auto lint, lint on save instead
let g:ale_lint_on_enter = 0
let g:ale_linters = {
\   'c': ['gcc'],
\}
let g:ale_linters_explicit = 1 " Only run linters named in ale_linters setting
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"""""""""""""
""" COLOR
"""""""""""""

set background=dark
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
set smarttab
set shiftwidth=4
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

" Keep n lines off the edges of the screen when scrolling
set scrolloff=4

" Reverse the split behavior
set splitbelow
set splitright

" Allow vim to hide modified buffers without abandoning them
set hidden

" Add a bit extra margin to the left beside line number
set foldcolumn=1

" Don't redraw while executing macros (performance config)
set lazyredraw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

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
" <F4> is already used to toggle IndentLine plugin

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

" Change .viminfo location
set viminfo+=n~/.vim/.viminfo

" Keep the same column when doing G motion
set nostartofline

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

" Enable project specific .vimrc file
set exrc
" Add these into those project's .vimrc file
" au bufWinLeave file_name mkview
" au bufWinEnter file_name silent loadview

" Markdown configuration
augroup MarkdownConfiguration
    " autocmd BufNewFile,BufRead *.md Goyo 80
    autocmd BufNewFile,BufRead *.md set wrap
    autocmd BufNewFile,BufRead *.md set linebreak breakindent
    autocmd BufNewFile,BufRead *.md nnoremap j gj
    autocmd BufNewFile,BufRead *.md nnoremap k gk
augroup END

