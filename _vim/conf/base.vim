"
" author:    Xu Xiaodong <xxdlhy@gmail.com>
" modified:  2016 May 14
"

"-- base --"

" make tab ident code
nmap <tab> I<tab><esc>
vmap <tab> >gv
nmap <s-tab> ^i<bs><esc>
vmap <s-tab> <gv

" set modeline
"nmap _m :call _set_modeline()<cr>

" add markdown header
nmap _m :call _markdown_header()<cr>

" add script header
nmap _h :call _set_sh_header()<cr>

" auto update timestamps
autocmd BufWritePre * call _last_modified()
