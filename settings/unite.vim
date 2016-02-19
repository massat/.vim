" http://qiita.com/jnchito/items/5141b3b01bced9f7f48f
""""""""""""""""""""""""""""""
" Unit.vimの設定
""""""""""""""""""""""""""""""
" バッファと最近使ったファイル一覧
noremap <C-T> :UniteWithProjectDir buffer file_mru bookmark -start-insert<CR>
" 全体から検索
noremap <C-]> :UniteWithProjectDir file_rec/async -start-insert<CR>

" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-S> unite#do_action('split')
"" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-V> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-V> unite#do_action('vsplit')

" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

