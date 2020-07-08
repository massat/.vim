" https://github.com/Shougo/shougo-s-github/blob/master/vim/rc/plugins/deoplete.rc.vim
"
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('enable_smart_case', 1)


" <TAB>: completion.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<C-h>"

call deoplete#custom#option('sources', {
\ '_': ['buffer'],
\})
