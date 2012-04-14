"
" author:    Xu Xiaodong <xxdlhy@gmail.com>
" modified:  2011 May 08
"

"-- ruby --"

" completion
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_classes_in_global=1

" file header
autocmd BufNewFile *.rb call _ruby_head()

" map
nmap <leader>rb :call _ruby_head()<cr>
