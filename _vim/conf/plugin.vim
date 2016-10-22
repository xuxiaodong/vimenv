"
" author   : Xu Xiaodong <xxdlhy@gmail.com>
" modified : 2016 Sep 21
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
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'
if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
let g:airline_symbols.maxlinenr=''
let g:airline_symbols.notexists=''
let g:airline_symbols.whitespace=''
"let g:airline_section_y=''
"let g:airline_section_z=''
"let g:airline_section_error=''
"let g:airline_section_warning=''
let g:airline#extensions#tabline#enabled = 1

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

" incsearch
map / <Plug>(incsearch-forward)
map ? <Plug>(incsearch-backware)
map g/ <Plug>(incsearch-stay)

" easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" dasht
" Search API docs for query you type in:
nnoremap <Leader>k :Dasht<Space>

" Search API docs for word under cursor:
nnoremap <silent> <Leader>K :call Dasht([expand('<cWORD>'), expand('<cword>')])<Return>

" Search API docs for the selected text:
vnoremap <silent> <Leader>K y:<C-U>call Dasht(getreg(0))<Return>

" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1

" indentlines
let g:indentLine_char = '┆'
let g:indentLine_enabled = 0
