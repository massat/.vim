" http://qiita.com/jnchito/items/5141b3b01bced9f7f48f
""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""
" insert modeで開始
let g:unite_enable_start_insert = 1

" 大文字小文字を区別しない
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" バッファと最近使ったファイル一覧
noremap <C-T> :Unite buffer file_mru bookmark<CR>

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
"" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-V> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-V> unite#do_action('vsplit')

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep: -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep: -buffer-name=search-buffer<CR><C-R><C-W>

" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

"unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif
