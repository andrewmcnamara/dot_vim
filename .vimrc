set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
set path=$PWD/**
set tags=./tags,tags;$HOME

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"Bundles
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'bling/vim-airline'
Bundle 'jpalardy/vim-slime'
Bundle 'elixir-lang/vim-elixir'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'pthrasher/conqueterm-vim'
Bundle 'tpope/vim-rbenv.git'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle 'honza/vim-snippets'
Bundle 'zeis/vim-kolor'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/pyte'
Bundle 'szw/vim-tags'
Bundle 'rking/ag.vim'
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
Bundle 'sjl/gundo.vim'

filetype plugin indent on      " required!
set number
"set relativenumber
set autoread	
let mapleader=","
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set noswapfile
set nobackup
set nowb
set title
set pastetoggle=<F2>
set hidden
set vb
set cursorline
set background=dark
set t_Co=256 " 256 colors
filetype plugin on
set omnifunc=syntaxcomplete#Complete


" Make command line two lines high
set ch=2
" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw
set showcmd
" Keep some stuff in the history
set history=100

nnoremap ; :

"autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Slime config
let g:slime_target = "tmux"
nnoremap <C-a> ggVG

nmap <buffer> <F4> <Plug>(xmpfilter-run)
xmap <buffer> <F4> <Plug>(xmpfilter-run)
imap <buffer> <F4> <Plug>(xmpfilter-run)
nmap <buffer> <F3> <Plug>(xmpfilter-mark)
xmap <buffer> <F3> <Plug>(xmpfilter-mark)
imap <buffer> <F3> <Plug>(xmpfilter-mark)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
"
set background=dark
"
" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions+=e
	set t_Co=256
	set guitablabel=%M\ %t
	set transparency=5
	set guioptions=aAce
	set guifont=Monaco:h14
	set columns=150
endif
" Buffer line config
"let g:bufferline_echo=0
"set statusline=%{bufferline#generate_string()}
"
colorscheme molokai
