" be improved
set nocompatible

""""""""""""""""""""
" NeoBundle
""""""""""""""""""""
filetype off

set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

runtime settings/nerdtree.vim
runtime settings/unite.vim
runtime settings/fugitive.vim

""""""""""""""""""""
" basic settings
""""""""""""""""""""
set noswapfile

"" indent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

"" use LF
set fileformat=unix

"" surfaces
set cmdheight=2
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set title

syntax on
colorscheme desert

"" utilities
set autoindent
set hlsearch
set incsearch
set smartcase
set smartindent
set smarttab
set wildmenu

