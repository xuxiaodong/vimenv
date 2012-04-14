"
" author:    Xu Xiaodong <xxdlhy@gmail.com>
" modified:  2011 May 08
"

"-- base --"

" make tab ident code
nmap <tab> I<tab><esc>
vmap <tab> >gv
nmap <s-tab> ^i<bs><esc>
vmap <s-tab> <gv

" set modeline
nmap _m :call _set_modeline()<cr>

" auto update timestamps
autocmd BufWritePre * call _last_modified()
