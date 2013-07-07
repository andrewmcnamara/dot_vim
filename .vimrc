set nocompatible               " be iMproved
set number
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

nnoremap ; :

filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!

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
colorscheme desert
set background=dark
"
" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
endif
" Buffer line config
let g:bufferline_echo=0
set statusline=%{bufferline#generate_string()}
"
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
"Bundle 'vim-scripts/Conque-Shell'
Bundle 'pthrasher/conqueterm-vim'
Bundle 'tpope/vim-rbenv.git'
Bundle 't9md/vim-ruby-xmpfilter'
