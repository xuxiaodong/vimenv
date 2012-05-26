"
" author:    Xu Xiaodong <xxdlhy@gmail.com>
" modified:  2012 May 26
"

"-- plugin --"

" pathogen
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" align
vmap <silent> <leader>i= <esc>:AlignPush<cr>:AlignCtrl lp1P1<cr>:'<,'>Align =<cr>:AlignPop<cr>
vmap <silent> <leader>i, <esc>:AlignPush<cr>:AlignCtrl lp0P1<cr>:'<,'>Align ,<cr>:AlignPop<cr>
vmap <silent> <leader>i( <esc>:AlignPush<cr>:AlignCtrl lp0P0<cr>:'<,'>Align (<cr>:AlignPop<cr>

" powerline
let g:Powerline_symbols='unicode'

" markdown helper
let g:markdownheader_style="atx"

" gsession
"let g:local_session_filename='.session.vim'

" yankring
"map <leader>y :YRShow<cr>

" closetag
"let g:closetag_html_style=1
"source ~/.vim/scripts/closetag.vim

" mail
"autocmd BufRead ~/.mutt/temp/mutt* :source ~/.vim/conf/mail.vim
