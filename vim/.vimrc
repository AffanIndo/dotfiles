""""""""""""""""""
""" BASIC INFO
""""""""""""""""""
"
" Maintainer: AffanIndo
"
" Sections:
"    -> BASIC INFO
"    -> GENERAL
"    -> LEADER
"    -> MAP
"    -> STATUS LINE
"    -> NETRW
"    -> CUSTOMIZATION

"""""""""""""""
""" GENERAL
"""""""""""""""

" Turn on syntax highlighting
syntax on

" Don't try to be vi compatible (must be first)
set nocompatible

" Don't create backup
set nobackup
set noswapfile

" Show line number
set number
set relativenumber

" Show row and column ruler information
set ruler

" Number of undo levels
set undolevels=1000

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

" Use visual bell (no beeping)
set visualbell

" Don't wrap files
set nowrap

" Keep N lines off the edges of the screen when scrolling
set scrolloff=4

" Encoding
set encoding=utf-8

" Open new split panes to right and bottom
set splitbelow
set splitright

" Lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase

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

""""""""""""""
""" LEADER
""""""""""""""

let mapleader=","

nnoremap <leader><space> :let @/=''<cr> " Clear search
nnoremap <leader>q :q!<cr>
nnoremap <leader>z :wq<cr> 
nnoremap <leader>w :w<cr>

"""""""""""
""" MAP
"""""""""""

noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
noremap Q <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap Q <nop>

""""""""""""""""""
""" STATUS LINE
""""""""""""""""""

set statusline=%f         " Path to the file
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
let g:netrw_winsize=15 " Sets to 25% width

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
nnoremap <silent> <leader>f :call ToggleVExplorer()<CR>

"""""""""""""""""""""
""" CUSTOMIZATION
"""""""""""""""""""""

" Color
" Custom colorscheme, comment if you want to use default
colorscheme Tomorrow-Night
set cursorline
" Default colorscheme, comment if you want to use custom
" colorscheme default
" set nocursorline

