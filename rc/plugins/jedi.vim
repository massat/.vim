" http://dackdive.hateblo.jp/entry/2014/08/13/130000

let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1

autocmd FileType python setlocal completeopt-=preview

" for w/ neocomplete
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
