" dein
" https://github.com/Shougo/shougo-s-github/blob/master/vim/rc/dein.rc.vim

let g:dein#install_progress_type = 'title'
let g:dein#install_message_type = 'none'
let g:dein#enable_notification = 1

let s:path = expand('$HOME/.vim/dein')
set runtimepath^=~/.vim/dein/repos/github.com/Shougo/dein.vim

if !dein#load_state(s:path)
  finish
endif

filetype off

call dein#begin(s:path, [expand('<sfile>')]
      \ + split(glob('~/.vim/rc/*.toml'), '\n'))

call dein#load_toml('~/.vim/rc/dein.toml', {'lazy': 0})
call dein#load_toml('~/.vim/rc/dein_lazy.toml', {'lazy': 1})

call dein#end()
call dein#save_state()

if dein#check_install()
  call dein#install()
endif

call dein#call_hook('source')
call dein#call_hook('post_source')

filetype plugin indent on
syntax enable
