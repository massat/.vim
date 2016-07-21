" be improved
set nocompatible

""""""""""""""""""""
" NeoBundle
""""""""""""""""""""
filetype off

set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'bling/vim-airline'
NeoBundleLazy 'davidhalter/jedi-vim', {
      \ "autoload": { "filetypes": [ "python", "python3" ] }}

NeoBundle 'fatih/vim-go'
NeoBundle 'glidenote/memolist.vim'

if executable('ctags')
  NeoBundle 'majutsushi/tagbar'
endif

" colorscheme
NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'nathanaelkane/vim-indent-guides'
if executable('flake8')
  NeoBundleLazy 'nvie/vim-flake8', {
      \ "autoload": { "filetypes": [ "python", "python3" ] }}
endif
NeoBundle 'scrooloose/nerdtree'

if has('lua')
  NeoBundle 'Shougo/neocomplete.vim'
endif

NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
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
NeoBundle 'sophacles/vim-bundle-mako'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-fugitive'

" ログファイルを色づけしてくれる
NeoBundle 'vim-scripts/AnsiEsc.vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

""""""""""""""""""""
" basic settings
""""""""""""""""""""
set autoread
set noswapfile

"" indent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2

"" use LF
set fileformat=unix

"" keys
let mapleader=","
noremap <silent> <C-B> :bnext<CR>
set backspace=indent,eol,start

""" tabs
noremap <silent> tt :tabnew<CR>
noremap <silent> <C-L> :tabnext<CR>
noremap <silent> <C-H> :tabprevious<CR>

"" surfaces
set cmdheight=2
set laststatus=2
set number
set ruler
set showcmd
set showmatch
set title

syntax on
set t_Co=256
colorscheme jellybeans

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

source ~/.vim/settings/airline.vim
source ~/.vim/settings/jedi.vim
source ~/.vim/settings/memolist.vim
source ~/.vim/settings/neocomplete.vim
source ~/.vim/settings/nerdtree.vim
source ~/.vim/settings/quickrun.vim
source ~/.vim/settings/tagbar.vim
source ~/.vim/settings/unite.vim
source ~/.vim/settings/fugitive.vim

