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

""""""""""""""
""" LEADER
""""""""""""""

" Set leader before loading all plugins
let mapleader = ","

" General leader map
nnoremap <leader>v <C-w>v<C-w>l " Split, then move to the split
nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>p :bprev<cr> " Previous buffer
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
noremap <leader><leader> :nohlsearch<cr> " Clear search highlight

"""""""""""""""
"""" PLUGIN
"""""""""""""""

" Install vim-plug if it doesn't installed yet
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install plugins, use :PlugInstall, :PlugUpdate, :PlugClean, :PlugUpgrade, or :PlugStatus
call plug#begin('~/.vim/plugged')
" Color Scheme
Plug 'romainl/flattened'
Plug 'AffanIndo/vim-todo-color'
Plug 'w0ng/vim-hybrid'
" General
Plug 'tmsvg/pear-tree'
Plug 'lifepillar/vim-mucomplete'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Yggdroot/indentLine', { 'for': 'html' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Language-specific
Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'php'] }
Plug 'ap/vim-css-color', { 'for': ['html', 'css', 'php'] }
call plug#end()

" Pear Tree
let g:pear_tree_repeatable_expand = 0

" MUcomplete
set completeopt+=menuone
let g:mucomplete#chains = {} " Declare empty variable to override the default
let g:mucomplete#chains.default = ['path', 'keyn']
let g:mucomplete#popup_direction = { 'keyn' : -1 } " Reverse completion direction

" NerdTree
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['.pyc$', 'node_modules', '\.git']
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeBookmarksFile = $HOME.'/.vim/.NERDTreeBookmarks'
let NERDTreeMapUpdir = 'h'
let NERDTreeMapChangeRoot = 'l'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree
nnoremap <C-f> :NERDTreeToggle<cr>

" IndentLine
let g:indentLine_char = '▏'

" Airline
let g:airline_theme='hybrid'
let g:airline_extensions = ['tabline']
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_min_count =2 " Show tabline if there are more than 1 buffer opened
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" Emmet
let g:user_emmet_leader_key = '<C-e>'

" Fzf
nnoremap <C-p> :FZF<cr>

" Goyo
nnoremap <leader>g :Goyo<cr>

"""""""""""""
""" COLOR
"""""""""""""

let g:hybrid_custom_term_colors = 1
colorscheme hybrid
set background=dark
" set cursorline

"""""""""""""""
""" GENERAL
"""""""""""""""

" Don't wrap text
set nowrap

" Show line number
set nonumber
set norelativenumber

" Tab and indent
set autoindent
set shiftwidth=4 " The number of space characters that will be inserted when performing >> or <<
set softtabstop=4 " The number of space characters that will be inserted when the tab key is pressed,
set expandtab " Insert space characters whenever the tab key is pressed

" Status
set laststatus=2

" Use /g flag on :s substitutions by default
set gdefault

" Search
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

" Reverse the split behavior
set splitbelow
set splitright

" Allow vim to hide modified buffers without abandoning them
set hidden

" Don't redraw while executing macros (performance config)
set lazyredraw

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Keep n lines off the edges of the screen when scrolling
set scrolloff=5

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

" Change .viminfo location
set viminfo+=n~/.vim/.viminfo

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

" Disable .netrwhist
let g:netrw_dirhistmax = 0

" Stay in the same column when doing G motion
set nostartofline

" Don't increment in octal notation
set nrformats-=octal

" Folding style
highlight Folded cterm=bold
function! MyFoldText()
    let line = getline(v:foldstart)
    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart
    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - strdisplaywidth(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction
set foldtext=MyFoldText()

" Markdown configuration
augroup MarkdownConfiguration
    " autocmd BufNewFile,BufRead *.md Goyo 80
    autocmd BufNewFile,BufRead *.md set wrap
    autocmd BufNewFile,BufRead *.md set linebreak breakindent
    autocmd BufNewFile,BufRead *.md nnoremap j gj
    autocmd BufNewFile,BufRead *.md nnoremap k gk
augroup END

