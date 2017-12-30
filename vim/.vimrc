""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: AffanIndo
"
" Sections:
"    -> BASIC INFO
"    -> LEADER
"    -> PLUGIN
"    -> COLOR
"    -> GENERAL
"    -> MAP
"    -> MISC

"""""""""""""""""""""""""
""" FIRST THING FIRST
"""""""""""""""""""""""""

" Don't wrap files
set nowrap

" Encoding
set encoding=utf-8

" Plugins essential
syntax on
filetype plugin indent on


""""""""""""""
""" LEADER
""""""""""""""
"
" You should set leader before loading all plugins

let mapleader=","
let g:mapleader=","

" General leader map
nnoremap <leader><space> :let @/=''<cr> " Clear search
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>v <C-w>v<C-w>l " Split then move to the split
nnoremap <leader>n :bnext<cr> " Next
nnoremap <leader>N :bprev<cr>
nnoremap <leader>r :source ~/.vimrc<cr> " Reset/reload config
noremap <leader>s :!%:p<cr> " Source (execute) current file

" List all buffers
nnoremap <leader>b :CtrlPBuffer<cr>

" Toggle paste mode when you want to paste from outside source
set pastetoggle=<leader>p

""""""""""""""
""" PLUGIN
""""""""""""""
"
" List of plugins:
" 0. pathogen
" 1. auto-pairs
" 2. ctrlp
" 3. nerdcommenter
" 4. nerdtree
" 5. lightline
" 6. surround
" 7. repeat
" 8. emmet
" 9. fugitive
" 10. supertab

" Pathogen
call pathogen#infect()
call pathogen#helptags()

" CtrlP
let g:ctrlp_max_height = 10
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'
let g:ctrlp_working_path_mode = 'ar' " CtrlP scans through .git project
let g:ctrlp_max_files = 1000 " Set no max file limit
let g:ctrlp_show_hidden = 1

" Nerdcommenter
let NERDSpaceDelims=1

" Nerdtree
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__', '\.git']
let g:NERDTreeWinSize=20
map <leader>f :NERDTreeToggle<cr>
let NERDTreeQuitOnOpen = 0
let NERDTreeMinimalUI=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree

" Lightline
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ }

" Emmet-vim
let g:user_emmet_leader_key='<leader>z' " <leader>z<comma> to activate.

"""""""""""""
""" COLOR
"""""""""""""

" Monkeypatch for nord low contrast comment
augroup nord-overrides
  autocmd!
    autocmd ColorScheme nord highlight Comment ctermfg=103
augroup END

" Color
colorscheme nord
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
" Use this config if you don't want swapfiles and backups, at all.
set nobackup
set noswapfile

" Show line number
set number
set relativenumber

" Show row and column ruler information
set ruler

" Backspace
set backspace=indent,eol,start

" Tab and indent
set autoindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

" The /g flag on :s substitutions by default
set gdefault

" Search
set hlsearch " Highlight all search result
set smartcase
set ignorecase
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

" Show last line
set noshowmode
set showcmd

" Show status bar
set laststatus=2 " Always show

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
set fillchars+=vert:█

"""""""""""
""" MAP
"""""""""""
"
" noremap  -> map normal and visual
" nnoremap -> map normal
" inoremap -> map insert

map <F5> :setlocal spell! spelllang=en_us<CR>

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

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

""""""""""""
""" MISC
""""""""""""

" Ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

" Markdown support
autocmd BufNewFile,BufRead *.md set wrap
autocmd BufNewFile,BufRead *.md nnoremap j gj
autocmd BufNewFile,BufRead *.md nnoremap k gk

" Templates
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.sh 0r ~/.vim/templates/skeleton.sh
  augroup END
endif

if has("autocmd")
  augroup templates
    autocmd BufNewFile 20*.md 0r ~/.vim/templates/skeleton.md
  augroup END
endif
