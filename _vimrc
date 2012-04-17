"
" author:    Xu Xiaodong <xxdlhy@gmail.com>
" modified:  2012 Apr 17
"

"-- source --"

source ~/.vim/conf/abbrevs.vim
source ~/.vim/conf/base.vim
source ~/.vim/conf/funcs.vim
source ~/.vim/conf/latex.vim
source ~/.vim/conf/perl.vim
source ~/.vim/conf/plugin.vim
source ~/.vim/conf/ruby.vim

"-- base --"

set nocompatible
set hidden
set relativenumber
set ruler
set cursorline
set wildmenu
set splitbelow

set history=500
set scrolloff=6
set cmdheight=1
set display=lastline
set omnifunc=syntaxcomplete#Complete

set laststatus=2
set statusline=\ [%n]\ \ %F%m%r\ \ %h%y%w\ \ [%l,%c]\ \ [%L]\ \ [%P]

syntax on

"-- colorscheme --"

if &t_Co < 256
  colorscheme miro8
else
  colorscheme jellybeans
endif

"-- file --"

filetype plugin indent on

set autoread
set noswapfile
set nowritebackup

set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,default

"-- format --"

set expandtab
set smarttab
set shiftround
set tabstop=2
set shiftwidth=2
set softtabstop=2
set textwidth=78

set autoindent
set smartindent
set copyindent

set foldenable
set foldmethod=marker

set backspace=indent,eol,start
set iskeyword+=:
set matchpairs+=<:>
set whichwrap+=<,>,h,l

set list
set listchars=tab:›\ ,eol:¬

set formatprg=par-format\ -w78

"-- search --"

set smartcase
set incsearch
set hlsearch
set gdefault
set showmatch

set grepprg=ack
set grepformat=%f:%l:%m

"-- map --"

let mapleader=','

map ; :

" exit back to normal mode
imap jj <esc>

nmap <leader>w :w!<cr>

nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>e :e! $MYVIMRC<cr>

" formatting paragraph
nmap Q gqap"
vmap Q gq

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" open a new vertical split and switch over to it
nmap <leader>l <c-w>v<c-w>l

" horizontal split
nmap <leader>- <c-w>s<c-w>j

" close window
nmap <leader>cw :close<cr>

" grep
map <leader>n :cn<cr>
map <leader>p :cp<cr>

" search
map <space> /
map <m-space> ?
nmap <silent> <leader>/ :nohlsearch<cr>

" paste mode
set pastetoggle=<f2>

" remove indenting on empty lines
map <f3> :%s/\s*$//g<cr>:noh<cr>''

" strip all trailing whitespace in the current file
nmap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" remove the Windows ^M
nmap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"-- other --"

" reload .vimrc
autocmd! BufWritePost vimrc source ~/.vimrc
