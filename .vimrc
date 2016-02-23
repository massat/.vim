" be improved
set nocompatible

""""""""""""""""""""
" NeoBundle
""""""""""""""""""""
filetype off

set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundleLazy 'davidhalter/jedi-vim', {
      \ "autoload": { "filetypes": [ "python", "python3" ] }}

NeoBundle 'glidenote/memolist.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdtree'

if has('lua')
  NeoBundle 'Shougo/neocomplete.vim'
endif

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
" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

source ~/.vim/settings/jedi.vim
source ~/.vim/settings/memolist.vim
source ~/.vim/settings/neocomplete.vim
source ~/.vim/settings/nerdtree.vim
source ~/.vim/settings/unite.vim
source ~/.vim/settings/fugitive.vim



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

"" keys
set backspace=indent,eol,start

"" surfaces
set cmdheight=2
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set statusline+=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title

syntax on
colorscheme desert

"" utilities
set autoindent
set clipboard=unnamed,autoselect
set hlsearch
set incsearch
set smartcase
set smartindent
set smarttab
set wildmenu

autocmd BufWritePre * :%s/\s\+$//ge " 行末の空白を削除
