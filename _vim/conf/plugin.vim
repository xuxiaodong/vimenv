"
" author   : Xu Xiaodong <xxdlhy@gmail.com>
" modified : 2013 Dec 09
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

" airline
"let g:airline_powerline_fonts=1
let g:airline_theme='tomorrow'

" powerline
"let g:Powerline_symbols='compatible'
"let g:Powerline_theme='codefun'

" nerdtree
let g:NERDTreeWinSize=25
let g:NERDTreeMinimalUI=1
"autocmd vimenter * NERDTree
"autocmd vimenter * exe 'winc w'
nmap nc :NERDTreeToggle<cr>

" tagbar
let g:tagbar_width=25
let g:tagbar_compact=1
nmap to :TagbarToggle<cr>

" slime
let g:slime_target='tmux'

" neocomplcache
let g:neocomplcache_enable_at_startup=1

" indent guides
"let g:indent_guides_enable_on_vim_startup=0
"let g:indent_guides_start_level=1
"let g:indent_guides_guide_size=1

" ultisnips
let g:UltiSnipsEditSplit='horizontal'
let g:UltiSnipsSnippetsDir='~/.vim/bundle/ultisnips/UltiSnips'

" python mode
"let g:pymode_rope_lookup_project=0

" hybrid
let g:hybrid_use_Xresources=1

" splitjoin
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

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
