" be improved
set nocompatible

""""""""""""""""""""
" NeoBundle
""""""""""""""""""""
filetype off

set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

runtime settings/unite.vim

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

