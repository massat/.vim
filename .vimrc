" be improved
if &compatible
  set nocompatible
endif

" Define function to load setting files.
" https://github.com/Shougo/shougo-s-github/blob/master/vim/rc/vimrc
function! s:source_rc(path, ...) abort "{{{
  let use_global = get(a:000, 0, !has('vim_starting'))
  let abspath = resolve(expand('~/.vim/rc/' . a:path))
  if !use_global
    execute 'source' fnameescape(abspath)
    return
  endif

  " substitute all 'set' to 'setglobal'
  let content = map(readfile(abspath),
        \ 'substitute(v:val, "^\\W*\\zsset\\ze\\W", "setglobal", "")')
  " create tempfile and source the tempfile
  let tempfile = tempname()
  try
    call writefile(content, tempfile)
    execute printf('source %s', fnameescape(tempfile))
  finally
    if filereadable(tempfile)
      call delete(tempfile)
    endif
  endtry
endfunction"}}}

call s:source_rc('dein.vim')

"NeoBundleLazy 'davidhalter/jedi-vim', {
"      \ "autoload": { "filetypes": [ "python", "python3" ] }}
"
"
"
"if executable('flake8')
"  NeoBundleLazy 'nvie/vim-flake8', {
"      \ "autoload": { "filetypes": [ "python", "python3" ] }}
"endif
"

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
"colorscheme jellybeans

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

"source ~/.vim/settings/fugitive.vim
"
