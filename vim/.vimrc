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
nnoremap <leader>q :q<cr>
nnoremap <leader>v <C-w>v<C-w>l " Split, then move to the split
nnoremap <leader>n :bnext<cr> " Next buffer
nnoremap <leader>p :bprev<cr> " Previous buffer
noremap <leader><space> :nohlsearch<cr> " Clear search highlight

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
" General
Plug 'tmsvg/pear-tree'
Plug 'lifepillar/vim-mucomplete'
Plug 'tpope/vim-surround'
Plug 'ap/vim-buftabline'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Yggdroot/indentLine', { 'for': 'html' }
" Language-Specific
Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] }
Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'w0rp/ale', { 'for': 'c' }
call plug#end()

" Pear Tree
let g:pear_tree_repeatable_expand = 0

" MUcomplete
set completeopt+=menuone
let g:mucomplete#chains = {} " Declare empty variable to override the default
let g:mucomplete#chains.default = ['path', 'keyn']

" Buftabline
let g:buftabline_show = 1 " Show if there are at least two buffers
augroup BuftablineColor
    autocmd ColorScheme * highlight BufTabLineFill cterm=NONE ctermfg=12 ctermbg=0
                      \ | highlight BufTabLineHidden cterm=NONE ctermfg=12 ctermbg=0
                      \ | highlight BufTabLineActive cterm=NONE ctermfg=12 ctermbg=0
                      \ | highlight BufTabLineCurrent cterm=reverse ctermfg=10 ctermbg=7
augroup END

" NerdCommenter
let NERDSpaceDelims = 1

" NerdTree
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['.pyc$', 'node_modules', '\.git']
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeBookmarksFile = $HOME.'/.vim/.NERDTreeBookmarks'
let NERDTreeMapUpdir = 'h'
let NERDTreeMapChangeRoot = 'l'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close vim if there is only nerdtree
nnoremap <leader>f :NERDTreeToggle<cr>

" IndentLine
let g:indentLine_char = '▏'

" Emmet
let g:user_emmet_leader_key = '<C-e>'

" Ale
let g:ale_c_gcc_options = "-Wall -ansi"
let g:ale_sign_column_always = 1 " Always show gutter
let g:ale_lint_delay = 500
" let g:ale_lint_on_text_changed = 'never' " Don't auto lint, lint on save instead
let g:ale_lint_on_enter = 0
let g:ale_linters = {
    \ 'c': ['gcc'],
    \ }
let g:ale_linters_explicit = 1 " Only run linters named in ale_linters setting
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"""""""""""""
""" COLOR
"""""""""""""

set background=dark
colorscheme flattened_dark
set cursorline

"""""""""""""""
""" GENERAL
"""""""""""""""

" Don't wrap text
set nowrap

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
" set number
" set relativenumber

" Tab and indent
set autoindent
set shiftwidth=4 " The number of space characters that will be inserted when performing >> or <<
set softtabstop=4 " The number of space characters that will be inserted when the tab key is pressed,
set expandtab " Insert space characters whenever the tab key is pressed

" Use /g flag on :s substitutions by default
set gdefault

" Search
set hlsearch
set ignorecase
set smartcase
set incsearch

" Highlight matching brace
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

" Change vim split to full block
" set fillchars+=vert:█

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
" Then, add these into those project's .vimrc file
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
