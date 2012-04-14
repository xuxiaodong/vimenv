"
" author:    Xu Xiaodong <xxdlhy@gmail.com> 
" modified:  2011 May 08
"

"-- perl --"

let perl_include_pod=1
let perl_extended_vars=1
let perl_sync_dist=250

nmap <leader>p :call _perl_head()<cr>
nmap <leader>us :<c-u>call _perl_use()<cr>

" comment
nmap _c :call _perl_comment()<cr>
vmap _c :call _perl_comment()<cr>

" tidy selected lines (or entire file) with _t:
nmap <silent> _t :%!perltidy -q<cr>
vmap <silent> _t :!perltidy -q<cr>

" check perl code with :make
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd Filetype perl set equalprg=perltidy
autocmd FileType perl set autowrite

" pressing K while on a keyword will bring up perldoc
autocmd FileType perl :nmap K :!perldoc <cword> <bar><bar> perldoc -f <cword><cr>

" perl file header
autocmd BufNewFile *.pl call _perl_head()

" compile check
autocmd! FileType perl :nmap <leader>c :!time perl -MVi::QuickFix -c %<cr>
