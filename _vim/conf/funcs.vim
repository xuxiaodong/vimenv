"
" author   : Xu Xiaodong <xxdlhy@gmail.com>
" modified : 2016 May 14
"

"-- update timestamps --"

function! _last_modified()
  if &modified
    let save_cursor = getpos(".")
    let n = min([20, line("$")])
    keepjumps exe '1,' . n . 's#^\(.\{,10}modified *: \+\).*#\1' .
          \ strftime('%Y %b %d') . '#ei'
    call histdel('search', -1)
    call setpos('.', save_cursor)
  endif
endfunction

"-- set modeline --"

function! _set_modeline()
  let filetype = input("Please enter file type: ", expand('<cword>'))
  exe "normal i# vim: ai:et:ts=2:sw=2:sts=2:tw=78:ft=" . filetype
endfunction

"-- add perl 'use' statement --"

" make sure you have
"   setlocal iskeyword=48-57,_,A-Z,a-z,:
" so colons are recognized as part of a keyword

function! _perl_use()
  let s:package = input('Package? ', expand('<cword>'))
  " skip if that use statement already exists
  if (search('^use\s\+'.s:package, 'bnw') == 0)
    " below the last use statement, except for some special cases
    let s:line = search('^use\s\+\(constant\|strict\|warnings\|parent\|base\|5\)\@!','bnw')
    " otherwise, below the ABSTRACT (see Dist::Zilla)
    if (s:line == 0)
      let s:line = search('^# ABSTRACT','bnw')
    endif
    " otherwise, below the package statement
    if (s:line == 0)
      let s:line = search('^package\s\+','bnw')
    endif
    " if there isn't a package statement either, put it below
    " the last use statement, no matter what it is
    if (s:line == 0)
      let s:line = search('^use\s\+','bnw')
    endif
    " if there are no package or use statements, it might be a
    " script; put it below the shebang line
    if (s:line == 0)
      let s:line = search('^#!','bnw')
    endif
    " if s:line still is 0, it just goes at the top
    call append(s:line, 'use ' . s:package . ';')
  endif
endfunction

"-- perl comment --"

function! _perl_comment()
  let l = getline('.')
  if l =~ '^#'
    exe 's/^#//g'
  else
    exe 's/^/#/g'
  endif
endfunction

"-- markdown header --"

function! _markdown_header()
let date = strftime("%Y-%m-%d %T")
exe "normal iTitle: "
exe "normal oDate: " . date
exe "normal oAuthors: toy"
exe "normal oCategory: News"
exe "normal oTags: "
exe "normal oSlug: "
exe "normal oVia: "
exe "normal o"
endfunction

"-- add script header --"

function! _set_sh_header()
  let filetype = input("File type: ", expand('<cword>'))
  let filename = bufname("%")
  let date = strftime("%Y %b %d")
  if (filetype != '')
    exe "normal i#!/usr/bin/env " . filetype
    exe "normal o#"
  else
    exe "normal i#"
  endif
  exe "normal o# name     : " . filename
  exe "normal o# author   : Xu Xiaodong <xxdlhy@gmail.com>"
  exe "normal o# license  : GPL"
  exe "normal o# created  : " . date
  exe "normal o# modified : " . date
  exe "normal o#"
  exe "normal o"
endfunction
