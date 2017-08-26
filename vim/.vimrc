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
"    -> GENERAL
"    -> MAP
"    -> STATUS LINE
"    -> NETRW

""""""""""""""
""" LEADER
""""""""""""""

" You should set leader before loading all plugins

let mapleader=","
let g:mapleader=","

" General leader map
nnoremap <leader><space> :let @/=''<cr> " Clear search
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr>
nnoremap <leader>w :w<cr>

" List all buffers
nnoremap <leader>B :buffers!<cr>
" Open a buffer
nnoremap <leader>b :b 

set pastetoggle=<leader>p

""""""""""""""
""" PLUGIN
""""""""""""""

" Activate pathogen
call pathogen#infect()
" Activate plugin's help file
call pathogen#helptags()
" Turn on syntax highlighting
syntax on
" Make sure plugin works
filetype plugin indent on

" Nerdtree
" let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=30
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" CtrlP
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'

" Color
" Custom colorscheme, comment if you want to use default
colorscheme Tomorrow-Night
set background=dark
set cursorline
" Default colorscheme, comment if you want to use custom
" colorscheme default
" set nocursorline

"""""""""""""""
""" GENERAL
"""""""""""""""

" Don't try to be vi compatible (must be first)
set nocompatible

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

" Don't wrap files
set nowrap

" Keep n lines off the edges of the screen when scrolling
set scrolloff=4

" Encoding
set encoding=utf-8

" Reverse the split behavior
set splitbelow
set splitright

" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

" Allow vim to hide modified buffers without abandoning them
set hidden

" Show status bar
set laststatus=2

" Show last line
set showmode
set showcmd

" Add a bit extra margin to the left
" set foldcolumn=1

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

" Don't redraw while executing macros (performance config)
set lazyredraw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Number of undo levels
set undolevels=1000

" Set how many history vim has to remember
set history=1000

"""""""""""
""" MAP
"""""""""""

" noremap -> map normal and visual
" inoremap -> map insert

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap Q <nop>

nnoremap ; :

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap Q <nop>

""""""""""""""""""
""" STATUS LINE
""""""""""""""""""

" set statusline=%f         " File name
set statusline=%F         " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%L        " Total lines
set statusline+=,         " Comma separator
set statusline+=%c        " Column

"""""""""""""
""" NETRW
"""""""""""""

" Remove top banner description
let g:netrw_banner=0

" Tree style file listing
let g:netrw_liststyle=3

" Set behavior how the files opened
" 1 - open files in a new horizontal split
" 2 - open files in a new vertical split
" 3 - open files in a new tab
" 4 - open in previous window
let g:netrw_browse_split=4

" Open new files in right window
let g:netrw_altv=1
set autochdir
" Set the width of the netrw
let g:netrw_winsize=15 " Sets to 15% width

" Toggle
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
" nnoremap <silent> <leader>f :call ToggleVExplorer()<CR>

