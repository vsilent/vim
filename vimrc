g:snipMate.snippet_version=0
set encoding=utf-8
"Kite
"
" Python, JavaScript, Go
let g:kite_supported_languages = ['python', 'javascript', 'rust']
let g:kite_tab_complete=1
autocmd CompleteDone * if !pumvisible() | pclose | endif
set belloff+=ctrlg  " if vim beeps during completion
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line

set guifont=Monaco:h13
let mapleader = "\<Space>"
set mouse=v " for easy copy"

set autoread
let g:Grep_Xargs_Options = ' -0 '
let g:rg_command = 'rg --vimgrep -S'
set rtp+=/usr/local/opt/fzf
" move window to the right
" Set xterm window title
highlight ExtraWhitespace ctermbg=red guibg=red
:hi wikiHeader1 guifg=#FF0000
:hi wikiHeader2 guifg=#00FF00
:hi wikiHeader3 guifg=#0000FF
:hi wikiHeader4 guifg=#FF00FF
:hi wikiHeader5 guifg=#00FFFF
:hi wikiHeader6 guifg=#FFFF00

map <Leader-S-l> <C-W>L
map <Leader-S-h> <C-W>R
map <Leader-S-j> <C-W>J
map <Leader-S-k> <C-W>K

let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#goto_assignments_command = "<Leader>g"
let g:jedi#goto_definitions_command = "<Leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<Leader>n"
let g:jedi#completions_command = "<C-Leader>"
let g:jedi#rename_command = "<Leader>r"
let g:jedi#show_call_signatures = "1"


let g:ycm_rust_src_path="/Users/vasilipascal/work/rust"
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

"let g:vdebug_options= {
"	  \  "port" : 9002,
"	  \  "server" : '127.0.0.1',
"	  \  "timeout" : 10,
"	  \  "on_close" : 'detach',
"	  \  "break_on_open" : 1,
"	  \  "ide_key" : '',
"	  \  "remote_path" : "",
"	  \  "local_path" : "",
"	  \  "debug_window_level" : 0,
"	  \  "debug_file_level" : 0,
"	  \  "debug_file" : "",
"	  \}
"
"let g:vdebug_keymap = {
"	  \  "run" : "<Leader>9",
"	  \  "run_to_cursor" : "<F11>",
"	  \  "step_over" : "<F4>",
"	  \  "step_into" : "<F5>",
"	  \  "step_out" : "<F6>",
"	  \  "close" : "<Leader>c",
"	  \  "detach" : "<Leader>7",
"	  \  "set_breakpoint" : "<F3>",
"	  \  "get_context" : "<Leader>9",
"	  \}
"

nmap p	p==
let g:yankring_enabled = 1

filetype off
filetype plugin indent on

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_cmd = 'CtrlP'
nmap <Leader><Space> :CtrlPBuffer<cr>
nmap <C-Leader> :CtrlPBuffer<cr>
map <Leader>o  :CtrlPBuffer<cr>
nmap t  :CtrlPTag<cr>
"let g:ctrlp_by_filename = 1
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|pyc)$'

set nocursorline

" Usefull regexp for "/" search
"
let g:nickID = 'Anonymous'
" show only current file in the list
let g:Tlist_Show_One_File	= 0
let g:Tlist_Process_File_Always = 1
let g:Tlist_Show_Menu	  = 1
let g:Tlist_Display_Prototype = 1
"
" would default to pasting from register 0 but still allow you to force pasting from
"the default register via ""p for those (not so uncommon) instances where you want to paste the last thing you
"deleted
" this cause many errors so i have disabled this feature
"noremap <expr> p v:register == '"' ? '"0p' : '"' . v:register . 'p'
noremap ""p p

let $PAGER='vim'


" Nice window title
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\						  " file name
  set titlestring+=%h%m%r%w						" flags
  set titlestring+=\ -\ %{v:progname}				  " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}	" working directory
endif
if has('gui')
  "this option for enabling menu
  set macmeta
  set guioptions+=m
  set guioptions-=T
  set guioptions-=l
  set guioptions-=L
  set guioptions-=r
  set guioptions-=R
  set guioptions+=a
endif
"Extra terminal things
if (&term =~ "xterm") && (&termencoding == "")
  set termencoding=utf-8
endif

" Status Bar
set laststatus=2
"set statusline=
"set statusline=%([%{Tlist_Get_Tagname_By_Line()}]%) " func name
"set statusline+=%2*%-3.3n%0*\		 " buffer number
"set statusline+=%f\				 " file name
"set statusline+=%h%1*%m%r%w%0*		   " flags
"set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
"set statusline+=\enc:\ %{&encoding},	 " encoding
"set statusline+=\fenc:\ %{&fileencoding},  " file encoding
"set statusline+=\termenc:\ %{&termencoding}, " term encoding
"set statusline+=%{&fileformat}]		   " file format
"set statusline+=%=				 " right align
"set statusline+=%-14.(%l,%c%V%)\ %<%P	 " offset

set nocompatible
set winaltkeys=yes

" Popup menu hightLight Group
set completeopt=menu,preview,menuone
""
"" GLOBAL SETTINGS
""
"" Write contents of the file, if it has been modified, on buffer exit
set autowrite
" Use UTF-8 as the default buffer encoding
set enc=utf-8
set fenc=utf-8
" Remember up to 500 'colon' commmands and search patterns
set history=50
" Jump to matching bracket for 2/10th of a second (works with showmatch)
"set matchtime=2
" Enable CTRL-A/CTRL-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex,alpha
" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround
" When a bracket is inserted, briefly jump to a matching one
"set showmatch
" Don't request terminal version string (for xterm)
set t_RV=
set updatecount=50
"set viminfo='20,\"250,:220,%,n~/.vim/tmp/.viminfo
"Disable dictionary
set clipboard-=autoselect

" Disable alt key for menus
set novisualbell
set noeb
set nobackup
set nowritebackup
set noswapfile
set ignorecase
set smartcase

" Показывать положение курсора всё время.
"set ruler

" Показывать незавершённые команды в статусбаре
set showcmd
set nu
set hlsearch
set incsearch

" Выключаем надоедливый "звонок"
set t_vb=

" Поддержка мыши
set mouse=a
set mousemodel=popup

" Не выгружать буфер, когда переключаемся на другой
" Это позволяет редактировать несколько файлов в один и тот же момент без необходимости сохранения каждый раз
" когда переключаешься между ними
set hidden

" Сделать строку команд высотой в одну строку
set ch=1

"" Скрывать указатель мыши, когда печатаем
set mousehide

"" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Fix <Enter> for comment
set fo+=cr

" Опции сесссий
set sessionoptions=curdir,buffers,tabpages
" set vertical and horizontal lines
" Don't use it, it slowdowns vim
":set cursorline
":set cursorcolumn
let foldenable = 0

"Tags
"set showfulltag
set tags=./tags,tags

set wildignore=*.o,*.obj,*.exe,*.dll,*.com,*.class,*.au,*.wav,*.mp[23g],*.jar,*.rar,*.zip,*.gz,*.tgz,*.jpg,*.png,*.gif,*.avi,*.wmv,*.flv,*.djvu,*.pdf,*.chm,*.ps,*.dvi,tags,*/CVS/,*/.hg/,*.~*,*~,*.sql,*.svn,*.pyc,*.swp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
set wildmode=longest,list,full
set wildmenu

set lazyredraw		" Don't redraw while executing macros
set nolist			" Don't show  as ^I and end-of-line as $
set shortmess=aOItT " To avoid the 'Hit ENTER to continue' prompt
set modeline

" Set textwidth to 0 line width
" Слова откуда будем завершать
set complete=""
" Из текущего буфера
set complete+=.
" Из словаря
"set complete+=k
" Из других открытых буферов
set complete+=b
" из тегов
set complete+=t

"***********************  LAST MAPS ***********************
" ignore these in auto complete
"nmap 00 :FuzzyFinderBookmark<cr>
"nmap <S-m> :FuzzyFinderAddBookmark<cr>
"nmap ¹ :TRegisters<cr>
"nmap <Leader>4 :%s/\<<c-r>=expand("<cword>")<cr>\>/that/gcl
imap ø <esc>C
imap Â <esc>C
"
"Copy that line to this position
nmap _ ggy$``o<esc>pV=
nmap <m-a> ggy$``o<esc>pV=
imap <Leader><Tab> <esc>dBi$this->getRequest->getParam('<esc>]pi');

"***********************   MAPPINGS  ***********************
" mapping will find all {#vars#} in the template and will copy them in the
" clipboard (ULTRA !!!!!!!!)
"noremap <Leader>f 0"+y0 :g/{#\w\+#}/call CopyMultiMatches()<cr>p
"noremap ,f 0"+y0 :g/{\$\w\+}/call CopyMultiMatches()<cr>p
noremap ,$ 0"+y0 :g/\$\w\+/call CopyMultiMatches()<cr>p
noremap <Leader>z 0"+y0 :g/^\w\+@\w\+/call CopyMultiMatches()<cr>p
noremap <Leader>a 0"+y0 :g/.*function\&.*Action()/call CopyMultiMatches()<cr>p
"Show list of all vars included in {#var#} (Smarty)
"noremap <Leader>f :g/{#.\+#}/p<cr>
"noremap <Leader>f :g/{#\w\+#}/y A<cr>
"beautify code {}
"noremap <Leader>n :%s/{/\r{/g<cr>gg=G
noremap <Leader>' :s/'/\\'/g<cr>
noremap <Leader>' :s/"/\\"/g<cr>
"
"Remove all HTML tags except {#vars#} {$var}
"vnoremap \\ s/<.[^{\#\$]*>//g<cr>
"
":g/{\#\w\+\#}/ copy $ | s/\([^{#]+\)\({#\w+#}\):\1
"clear {#vars#}

" Beautify css code blocks
vmap ;; <esc>:'<,'>B s/;/;\r/g<cr>vaB=

noremap L f$l
noremap H T$

" -----------------------------------META(ALT)-----------------------------------
"vmap <Leader>l <esc>:'<,'>B s/\n/,\r/g<cr>gv=
"vmap <Leader>, <esc>:'<,'>B s/\n/,\r/g<cr>vaB=
"search in the selected area
"Copy this line to that position
map <c-c> :<c-r>=line(".")<cr>co
"inoremap <space-d> <ESC>:AutoPreviewToggle<CR>i
"Clear table information that is come from db
imap <space-e> <esc>2la
noremap <Leader-e> "_diw[p

"search for two words in buffers
noremap <Leader-f> /.*function\&.*
noremap <Leader-d> /.*def\&.*
"noremap <Leader-g> g]

"nmap <Leader>h <esc>^i
"nmap <Leader>k <esc>$a
"nmap <Leader>j <esc>gji
"nmap <Leader>k <esc>gki

noremap <M-h> ^
noremap <M-j> <c-w>b
noremap <M-k> <PageUp>
noremap <M-j> <PageDown>
noremap <M-l> $
noremap <M-s> :GrepBuffer<cr>


" Mark Corey
" ---------------------------------------------------------------------
map mm <Plug>Place_sign
map <Leader-m> <Plug>Goto_prev_sign
inoremap <Leader-n> <Plug>Goto_next_sign

"Put from clipboard
map <Leader-p> :YRShow<cr>

" Quoting word back in insert mode
noremap <Leader-q> f'l

imap <silent><Leader-q> <esc>m`bysw'``

" Поиск и замена слова под курсором

nmap <Leader-r> :%s//
nmap <D-r> :%s//
vmap <Leader-r> :B s/\<<c-r>=expand("<cword>")<cr>\>/
"snippets

noremap <Leader-t> :ToggleWord<cr>

"Remove back
imap <M-w> <c-w>
" Jump to next window very usefull
noremap <M-w> <c-w>w

"Very usefull
vmap <Leader-/> <Esc>/\%V
noremap gd <c-]><cr>

"-----------------------------------SHIFT-----------------------------------
"open tag in window
"browse file with w3m
noremap <S-b> ^"ay$:!w3m <c-r>a<cr>
noremap <S-y> y$

" -----------------------------------CTRL-----------------------------------
" map CTRL-L to piece-wise copying of the line above the current one
"inoremap <c-l> @@@<ESC>hhkywjl?@@@<CR>P/@@@<CR>3s

nmap <C-a> ggvG$

"go to previous tab
noremap <c-h> gT
imap <c-h> <c-w>
"noremap <C-i> in vim use (Move to the previous jump from history)
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_
"go to next tab
noremap <C-l> gt
noremap <c-t> :tabe<cr>

vnoremap <D-/> <Leader>cc

vnoremap <c-?> y?\V<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>gV
" GTAGS\
"Remove word back insert mode
"imap <C-backspace> <c-w>
"Remove word back normal mode and switch to insert mode

" ----------------------------------- , -----------------------------------

nmap <Leader>b :CtrlPBuffer<cr>

noremap ,d	iupdated by baz@optimum-web.com <esc>:r! date<cr>kJ

" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d :",
	\ &tabstop, &shiftwidth, &textwidth)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent>,l :call AppendModeline()<CR>

noremap ,f :call ShowFuncName()<CR>
" Sessionman
" Marks Corey settings
" If you want to save the marks to a file. Do it like below:
" Save marks.
map \m :call Save_signs_to_file()<cr>
" Do this, after opening all your marked files
map \l :call Load_signs_from_file()<cr>
"Used for displaying function prototype

noremap ,o :SessionList<cr>
noremap <Leader>r :Gbuffersearch<cr>
noremap <Leader>re :Greplace<cr>
noremap <Leader>rd :DirReplace<cr>
noremap ,s :SessionSave<cr>

noremap ,v :edit ~/.vimrc<cr>
noremap <Leader>g :edit ~/.gvimrc<cr>
noremap <Leader>w <c-w>w
"Remove empty lines
noremap <Leader>x :%s /^\n\{1}//g<cr>
"Recursive search and replace
inoremap ,, <esc>m`F4r$``a
"vmap <Leader><Leader> <esc>:'<,'>B s/,/,\r/g<cr>

vnoremap <Leader>[ :%s/^\@<!{/\r{\r/g<cr>
vnoremap <Leader>] :%s/^\@<!}/\r}/g<cr>
vnoremap <Leader>< :%s/^\@<!</\r<\r/g<cr>


" ----------------------------------- Leader -----------------------------------
noremap \u :%s/<c-V><c-M>/<c-V><c-M>/g
map \gr :r!find ./* -type f -iname "*.py" -exec grep -HEnq 'def myfunc(' {} \; -a -print
map <Leader>f :grep -n -r "rmilter" . /dev/null 2>&1
noremap <Leader>v :edit ~/.vimrc<cr>
"vnoremap \\ :B s/<.[^{]*>//g<cr>
"map \o :Unite file <C-r>=expand('<cword>')<CR><CR>
"noremap \s :source ~/.vimrc<cr>
"map \w :sav! ~/temp/test.html<CR>
"nnoremap \whites :call ToggleShowWhitespace()<CR>
"noremap \spell  :set spell spelllang=en_us<cr>

" Quoting word back in insert mode end
map "" m`ysw"``
map qw m`ysw'``
map qb ysb'
"noremap (	f(l
"reserved
" go to html tag content
" Load into editor www.mypage.com sourse
"noremap !! :call GetHTML()<CR>

" ----------------------------------- g key  -----------------------------------
"
" go forward inside double quotes
"
nmap j gj
nmap k gk

"To use gw to swap the current word with the next, without changing cursor position: (See note.)
":nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>
" This version will work across newlines:
":nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>
"To use gl to swap the current word with the previous, keeping cursor on current word: (This feels like "pushing" the word to the left.) (See note.)
":nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>
"To use gr to swap the current word with the next, keeping cursor on current word: (This feels like "pushing" the word to the right.) (See note.)
":nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o>/\w\+\_W\+<CR><c-l>
:nnoremap gl g;
"-------------------------
" Горячие клавишы
"-------------------------
"display registers
nmap <Leader-y> :YRShow<cr>
vmap <Leader-y> <esc>:YRShow<cr>
imap ZZ <esc>:make<cr> :w!<cr>

let g:NERDTreeBookmarksFile = "/home/vs/.vim/bookmarks"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$']
map <F1> :NERDTreeToggle<cr>
vmap <F1> <esc>:NERDTreeToggle<cr>i
imap <F1> <esc>:NERDTreeToggle<cr>i
"nmap <F1> :reg<cr>
"vmap <F1> <esc>:YRShow<cr>
"imap <F1> <esc>:YRShow<cr>
"nmap <F1> :w!<cr>
"vmap <F1> :w!<cr>
"imap <F1> :w!<cr>
"nmap <F2> :w<cr>:TlistUpdate<cr>
"vmap <F2> <esc>:w<cr>:TlistUpdate<cr>i
"imap <F2> <esc>:w<cr>:TlistUpdate<cr>i
map <F2> :w!<cr>:%retab!<cr>
nmap <F2> :w!<cr>:%retab!<cr>
vmap <F2> :w!<cr>:%retab!<cr>
imap <F2> <esc>:w!<cr>:%retab!<cr>
"nmap <F3> :new<cr>
"vmap <F3> :new<cr>
"imap <F3> <esc>:new<cr>
"map <F4> :Replace
"nmap <F5> :YRShow<cr>
"nmap <F6> :YRShow<cr>

"noremap <F7> :Rgrep<cr>
noremap <F7> :Rg<space>
noremap <S-F7> :GrepBuffer<cr>

map <F4> :Replace
" F8 - delete buffer
map <F8> :bd<cr>
vmap <F8> <esc>:bd<cr>
imap <F8> <esc>:bd<cr>
" F9 - "make" команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i
" F10 - unload buffer but keep it in the buffer list
"map ,k :bd<cr>
map <F10> :bun!<cr>
vmap <F10> <esc>:bun!<cr>
imap <F10> <esc>:bun!<cr>
" F11 - показать окно Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>
map <F12> :CtrlP<cr>

map <Leader-F7> :Rgrep<cr>
vmap <Leader-F7> <esc>:Rgrep<cr>
imap <Leader-F7> <esc>:Rgrep<cr>

map <c-f> :find
vmap <c-f> :find
imap <c-f> :find
" Выключаем ненавистный режим замены
"imap >Ins> <Esc>i
" visual shifting (does not exit Visual mode)
"vnoremap < <gv
"vnoremap > >gv
"Here is  a big problem with C-I and <TAB> cause this is the same in VIM
nnoremap <c-tab> <c-~>
"noremap <silent><S-tab> <<
"imap <S-tab> <esc><<i
"don't uncomment because ctrl+i and tab is the same
"nmap <tab> >>
vmap <tab> >>
vmap <S-tab> <<
nmap <S-tab> <<
""*********************** PLUGIN'S SETTINGS ***********************

"let g:SuperTabLongestHighlight = 1
"let g:SuperTabMidWordCompletion = 1
"let g:SuperTabRetainCompletionType = 1
"
" Syntastic
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_php_phpcs_args='--standard=PSR2 -n'

"" Omnicompletion popup settings
"" set 4 symbols before completion starts
let g:acp_behaviorHtmlOmniLength=4
let g:acp_behaviorKeywordLength=4

let g:Signs_file_path_corey='~/.vim/tmp/vimmarks'


"set et	"Tabs to spaces
" Tab is tab \t
set noet "spaces to tabs
"set tw=0
"Remove unwaanted spaces at the end of each line!!!!!!!!!!!!!!!!!SUPER
autocmd BufWritePre * :%s/\s\+$//e

"" Включить автоотступы
set autoindent
" Размер табулации по умолчанию
set tabstop=4
set sw=4
set sts=4
" use tabs instead of spaces
"set noexpandtab
set expandtab

au BufRead,BufNewFile  *.yml   set ft=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au BufRead,BufNewFile  *.tpl   set ft=html
au BufRead,BufNewFile  *.wsgi  set ft=python
au BufRead,BufNewFile  *.py    set ft=python
"au BufRead,BufNewFile  *.txt   set dictionary+=/usr/share/dict/words
au BufRead,BufNewFile  *.txt   set spell spelllang=en_us
au BufRead,BufNewFile  *.txt   set spell spelllang=en_us
au BufRead,BufNewFile  *.html  set ft=html
au BufRead,BufNewFile  *.js    set ft=javascript

"au FileType python set sw=4 sts=4 ts=4 et
au FileType javascript :map <F9> :make<cr>

au BufRead,BufNewFile  *.phtml *.html *.twig  *.html.twig set ft=html
au FileType php set sw=4 sts=4 ts=4 noet
au FileType phtml set sw=4 sts=4 ts=4 noet
au FileType phtml set sw=4 sts=4 ts=4 noet
au FileType html set sw=4 sts=4 ts=4 noet
au FileType twig set ft=html sw=4 sts=4 ts=4 noet

""Session Manager
let g:SessionMgr_AutoManage  = 0
let g:SessionMgr_DefaultName = "mysession"

" Use 0"+y0 to clear the clipboard, then
"  :g/pattern/call CopyMultiMatches()
" to copy all multiline hits (just the matching text).
" This is for when the match extends over multiple lines.
" Only the first match from each line is found.
" BUG: When searching for "^function.*\_s*let" the '.*' stops at the end
" of a line, but it greedily skips "\n" in the following (we copy too much).
function! CopyMultiMatches()
  let text = join(getline(".", "$"), "\n") . "\n"
  let @+ .= matchstr(text, @/) . "\n"
endfunction

function! D2u()
    execute "<esc>%s///g"
endfunction


" Use 0"+y0 to clear the clipboard, then
" :g/pattern/call CopyMatches()
" to copy all hits (just the text which matches pattern).
function! CopyMatches()
  let lin = getline(".")
  let idx = 0
  while idx >= 0
  let @+ .= matchstr(lin, @/, idx) . "\n"
  let xEnd = matchend(lin, @/, idx)
  let idx = match(lin, @/, xEnd)
  endwhile
endfunction


let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Author = "Vasili Pascal <baz@optimum-web.com>"
let g:pdv_cfg_Version = "1.0"
let g:pdv_cfg_ReturnVal = "void"
let g:pdv_cfg_Copyright = "@copyright "
let g:pdv_cfg_License = ""

"inoremap <expr> -	smartchr#loop('->', '_', '-')
inoremap <expr> $  smartchr#loop('$', '$this->', '$("#")', '$$')
inoremap <expr> &  smartchr#loop('&', '&&', '&nbsp;')
inoremap <expr> -  smartchr#loop('-', '--', '->')
inoremap <expr> ==	smartchr#loop('==', '=>', '<?=?>')
inoremap <expr> %  smartchr#loop('%','%%','{% %}')


" Включаем "умные" отспупы ( например, автоотступ после    {)
set smartindent
nnoremap <c-s>  :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif


set winaltkeys=no
set nocompatible              " be iMproved, required
filetype off                  " required


call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'git://git.wincent.com/command-t.git'
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plug 'morhetz/gruvbox'
Plug 'davidhalter/jedi-vim'

Plug 'scrooloose/nerdcommenter'
Plug 'vimwiki/vimwiki'
Plug 'kien/ctrlp.vim'
Plug 'klen/python-mode'	 " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plug 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plug 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim

"Plugin 'andrewstuart/vim-kubernetes'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'ciaranm/securemodelines'
Plug 'editorconfig/editorconfig-vim'
Plug 'justinmk/vim-sneak'

" GUI enhancements
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

" Fuzzy finder
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Semantic language support
"Plug 'neovim/nvim-lspconfig'
"Plug 'nvim-lua/lsp_extensions.nvim'
"Plug 'hrsh7th/cmp-nvim-lsp', {'branch': 'main'}
"Plug 'hrsh7th/cmp-buffer', {'branch': 'main'}
"Plug 'hrsh7th/cmp-path', {'branch': 'main'}
"Plug 'hrsh7th/nvim-cmp', {'branch': 'main'}
"Plug 'ray-x/lsp_signature.nvim'

" Only because nvim-cmp _requires_ snippets
Plug 'hrsh7th/cmp-vsnip', {'branch': 'main'}
Plug 'hrsh7th/vim-vsnip'

" Syntactic language support
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'rhysd/vim-clang-format'
"Plug 'fatih/vim-go'
Plug 'dag/vim-fish'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

Plug 'vim-scripts/sessionman.vim'
Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'garbas/vim-snipmate'
"Plug 'MarcWeber/vim-addon-mw-utils'
"Plug 'tomtom/tlib_vim'

" Track the engine.
#Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
#Plugin 'honza/vim-snippets'

call plug#end()

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" All of your Plugins must be added before the following line
"
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
syntax on "Syntax on
let $JS_CMD='node'

if has('nvim')
    set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor
    set inccommand=nosplit
    noremap <C-q> :confirm qall<CR>
end


set bg=dark
if &term == 'xterm' || &term == 'screen-bce' || &term == 'screen' || &term == 'rxvt-unicode'
  set t_Co=256 " Let ViM know we have a 256 color capible terminal
  " Color schemes
  colo gruvbox
  "colo molokai
  "colo wombat
else
  set t_Co=256 " Let ViM know we have a 256 color capible terminal
  "colo molokai
  "colo wombat
  colo gruvbox
endif

" LSP configuration
"lua << END
"local cmp = require'cmp'
"
"local lspconfig = require'lspconfig'
"cmp.setup({
"  snippet = {
"    -- REQUIRED by nvim-cmp. get rid of it once we can
"    expand = function(args)
"      vim.fn["vsnip#anonymous"](args.body)
"    end,
"  },
"  mapping = {
"    -- Tab immediately completes. C-n/C-p to select.
"    ['<Tab>'] = cmp.mapping.confirm({ select = true })
"  },
"  sources = cmp.config.sources({
"    -- TODO: currently snippets from lsp end up getting prioritized -- stop that!
"    { name = 'nvim_lsp' },
"  }, {
"    { name = 'path' },
"  }),
"  experimental = {
"    ghost_text = true,
"  },
"})
"
"-- Enable completing paths in :
"cmp.setup.cmdline(':', {
"  sources = cmp.config.sources({
"    { name = 'path' }
"  })
"})
"
"-- Setup lspconfig.
"local on_attach = function(client, bufnr)
"  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
"  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
"
"  --Enable completion triggered by <c-x><c-o>
"  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
"
"  -- Mappings.
"  local opts = { noremap=true, silent=true }
"
"  -- See `:help vim.lsp.*` for documentation on any of the below functions
"  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
"  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
"  buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
"  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
"  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
"  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
"  buf_set_keymap('n', '<space>r', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
"  buf_set_keymap('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
"  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
"  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
"  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
"  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
"  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
"  buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
"
"  -- Get signatures (and _only_ signatures) when in argument lists.
"  require "lsp_signature".on_attach({
"    doc_lines = 0,
"    handler_opts = {
"      border = "none"
"    },
"  })
"end
"
"local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
"lspconfig.rust_analyzer.setup {
"  on_attach = on_attach,
"  flags = {
"    debounce_text_changes = 150,
"  },
"  settings = {
"    ["rust-analyzer"] = {
"      cargo = {
"        allFeatures = true,
"      },
"      completion = {
"	postfix = {
"	  enable = false,
"	},
"      },
"    },
"  },
"  capabilities = capabilities,
"}
"
"vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
"  vim.lsp.diagnostic.on_publish_diagnostics, {
"    virtual_text = true,
"    signs = true,
"    update_in_insert = true,
"  }
")
"END

" Enable type inlay hints
autocmd CursorHold,CursorHoldI *.rs :lua require'lsp_extensions'.inlay_hints{ only_current_line = true }

" Plugin settings
let g:secure_modelines_allowed_items = [
                \ "textwidth",   "tw",
                \ "softtabstop", "sts",
                \ "tabstop",     "ts",
                \ "shiftwidth",  "sw",
                \ "expandtab",   "et",   "noexpandtab", "noet",
                \ "filetype",    "ft",
                \ "foldmethod",  "fdm",
                \ "readonly",    "ro",   "noreadonly", "noro",
                \ "rightleft",   "rl",   "norightleft", "norl",
                \ "colorcolumn"
                \ ]

" Lightline
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileencoding', 'filetype' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename'
      \ },
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" from http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
endif
if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

" Javascript
let javaScript_fold=0

" rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
let g:rust_clip_command = 'xclip -selection clipboard'

" Follow Rust code style rules
au Filetype rust source ~/.config/nvim/scripts/spacetab.vim
au Filetype rust set colorcolumn=100

" Neat X clipboard integration
" ,p will paste clipboard into buffer
" ,c will copy entire buffer into clipboard
noremap <leader>p :read !xsel --clipboard --output<cr>
noremap <leader>c :w !xsel -ib<cr><cr>

" <leader>s for Rg search
noremap <leader>s :Rg
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! s:list_cmd()
  let base = fnamemodify(expand('%'), ':h:.:S')
  return base == '.' ? 'fd --type file --follow' : printf('fd --type file --follow | proximity-sort %s', shellescape(expand('%')))
endfunction

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, {'source': s:list_cmd(),
  \                               'options': '--tiebreak=index'}, <bang>0)


" nvim
if has('nvim')
	runtime! plugin/python_setup.vim
endif

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
