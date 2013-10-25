" GREP plugin
:let Grep_Default_Filelist = '*.py '
:let Grep_Skip_Dirs = 'tmp img cache images cvs files .svn'
:let Grep_Skip_Files = '*.bak *~ *.gif *.png *.jpg *.sql tags *.pyc'
" Autocompl popup of snipmate
:let g:acp_behaviorSnipmateLength = 1

let g:pymode_lint_config = "/home/vs/.pylintrc"

let ropevim_extended_complete=1
"let ropevim_vim_completion=1

"function! TabWrapperRope()
 "if strpart(getline('.'), 0, col('.')-1) =~ '^\s*$'
 "return "\"
 "else
 "return "\<C-R>=RopeCodeAssistInsertMode()\"
 "endif
"endfunction

"imap  <C-R>=TabWrapperRope()


fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("def .*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun

"commented because F9 should call :make
au FileType python :map <F9> :!python %<cr>

"au FileType python set list set listchars=tab:>.,trail:.,extends:#,nbsp:.
"au FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate
autocmd FileType twig set ft=htmldjango.html " For SnipMate
au BufRead,BufNewFile  *.twig set ft=htmldjango
