"
" author   : Xu Xiaodong <xxdlhy@gmail.com>
" modified : 2012 Jun 30
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
let g:Powerline_symbols='fancy'

" nerdtree
let g:NERDTreeWinSize=25
let g:NERDTreeMinimalUI=1
autocmd vimenter * NERDTree
autocmd vimenter * exe 'winc w'
nmap nc :NERDTreeToggle<cr>

" tagbar
let g:tagbar_width=25
let g:tagbar_compact=1
nmap to :TagbarToggle<cr>

" slime
let g:slime_target='tmux'

" markdown
autocmd BufRead *.md set ft=markdown

" markdown helper
"source ~/code/vim-md-helper/plugin/markdown-helper.vim

" gsession
"let g:local_session_filename='.session.vim'

" yankring
"map <leader>y :YRShow<cr>

" closetag
"let g:closetag_html_style=1
"source ~/.vim/scripts/closetag.vim

" mail
"autocmd BufRead ~/.mutt/temp/mutt* :source ~/.vim/conf/mail.vim
