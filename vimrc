" move window to the right
" Set xterm window title
highlight ExtraWhitespace ctermbg=red guibg=red
:hi wikiHeader1 guifg=#FF0000
:hi wikiHeader2 guifg=#00FF00
:hi wikiHeader3 guifg=#0000FF
:hi wikiHeader4 guifg=#FF00FF
:hi wikiHeader5 guifg=#00FFFF
:hi wikiHeader6 guifg=#FFFF00

map <M-S-l> <C-W>L
map <M-S-h> <C-W>R
map <M-S-j> <C-W>J
map <M-S-k> <C-W>K

let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

call pathogen#infect()

let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

let g:vdebug_options= {
      \  "port" : 9002,
      \  "server" : '127.0.0.1',
      \  "timeout" : 10,
      \  "on_close" : 'detach',
      \  "break_on_open" : 1,
      \  "ide_key" : '',
      \  "remote_path" : "",
      \  "local_path" : "",
      \  "debug_window_level" : 0,
      \  "debug_file_level" : 0,
      \  "debug_file" : "",
      \}

let g:vdebug_keymap = {
      \  "run" : "<M-Space>",
      \  "run_to_cursor" : "<M-1>",
      \  "step_over" : "n",
      \  "step_into" : "<M-i>",
      \  "step_out" : "<M-o>",
      \  "close" : "<M-c>",
      \  "detach" : "<M-7>",
      \  "set_breakpoint" : "<M-0>",
      \  "get_context" : "<M-9>",
      \}

"let mapleader = ","
let mapleader = "\<Space>"

nmap p  p==
let g:yankring_enabled = 1

" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

let g:ctrlp_map = '<leader><leader>'
nmap <leader><leader> :CtrlPBuffer<cr>
map <leader><leader>  :CtrlPBuffer<cr>
map <M-o>  :CtrlPBuffer<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

"
" space - обозреватель файлов
"nmap <space> :FufBuffer<cr>
"map <space> :FufBuffer<cr>
"vmap <space> <esc>:FufBuffer<cr>i
"vmap <space> <esc>:FufBuffer<cr>i

"map <S-space> :FufRenewCache<cr>
"imap <S-space> <esc>:FufRenewCache<cr>
"vmap <S-space> <esc>:FufRenewCache<cr>

:set nocursorline

"
" Usefull regexp for "/" search
"
"split('\[\/\.-\]'
":%s//preg_split('\/[\\\/-]\/'/gcl

let g:nickID = 'Anonymous'
" Настройки для Tlist (показвать  только  текущий файл  в окне
"навигации   по    коду)
let g:Tlist_Show_One_File   = 0
let g:Tlist_Process_File_Always = 1
let g:Tlist_Show_Menu     = 1
let g:Tlist_Display_Prototype = 1
"
" would default to pasting from register 0 but still allow you to force pasting from
"the default register via ""p for those (not so uncommon) instances where you want to paste the last thing you
"deleted
" this cause many errors so i have disabled this feature
"noremap <expr> p v:register == '"' ? '"0p' : '"' . v:register . 'p'
noremap ""p p

let $PAGER='vim'

if &term == 'xterm' || &term == 'screen-bce' || &term == 'screen' || &term == 'rxvt-unicode'
  set t_Co=256 " Let ViM know we have a 256 color capible terminal
  " Color schemes
  "colo zenburn
  "colo silent
  colo wombat
else
  colo wombat
endif
" Nice window title
if has('title') && (has('gui_running') || &title)
  set titlestring=
  set titlestring+=%f\                        " file name
  set titlestring+=%h%m%r%w                     " flags
  set titlestring+=\ -\ %{v:progname}                 " program name
  set titlestring+=\ -\ %{substitute(getcwd(),\ $HOME,\ '~',\ '')}  " working directory
endif
if has('gui')
  "this option for enabling menu
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
set statusline=
set statusline=%([%{Tlist_Get_Tagname_By_Line()}]%) " func name
set statusline+=%2*%-3.3n%0*\        " buffer number
set statusline+=%f\              " file name
set statusline+=%h%1*%m%r%w%0*         " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=\enc:\ %{&encoding},     " encoding
set statusline+=\fenc:\ %{&fileencoding},  " file encoding
set statusline+=\termenc:\ %{&termencoding}, " term encoding
set statusline+=%{&fileformat}]        " file format
set statusline+=%=               " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P    " offset


set nocompatible
set winaltkeys=yes

" Avoid loading MatchParen plugin
"let loaded_matchparen = 1

"set mps-=[:]
" Popup menu hightLight Group
"set completeopt=menu,longest,preview
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
set viminfo='20,\"250,:220,%,n~/.vim/tmp/.viminfo
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

" Включаем нумерацию строк
set nu

" Фолдинг по отсупам
"set foldmethod=indent
set hlsearch
set incsearch

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы подняться в режиме редактирования
"set scrolljump=7

" Теперь нет необходимости передвигать курсор к краю экрана, чтобы опуститься в режиме редактирования
"set scrolloff=7

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

syntax on "Syntax on

"Tags
"set showfulltag
set tags=./tags,tags

set wildignore=*.o,*.obj,*.exe,*.dll,*.com,*.class,*.au,*.wav,*.mp[23g],*.jar,*.rar,*.zip,*.gz,*.tgz,*.jpg,*.png,*.gif,*.avi,*.wmv,*.flv,*.djvu,*.pdf,*.chm,*.ps,*.dvi,tags,*/CVS/,*/.hg/,*.~*,*~,*.sql,*.svn,*.pyc,*.swp
set wildmode=longest,list,full
set wildmenu

set lazyredraw    " Don't redraw while executing macros
set nolist      " Don't show  as ^I and end-of-line as $
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
"nmap 33 :Search
"nmap <M-4> :%s/\<<c-r>=expand("<cword>")<cr>\>/that/gcl
imap ø <esc>C
imap Â <esc>C
"
"Copy that line to this position
nmap _ ggy$``o<esc>pV=
nmap <m-a> ggy$``o<esc>pV=
imap <M-Tab> <esc>dBi$this->getRequest->getParam('<esc>]pi');

"***********************   MAPPINGS  ***********************
" mapping will find all {#vars#} in the template and will copy them in the
" clipboard (ULTRA !!!!!!!!)
"noremap <leader>f 0"+y0 :g/{#\w\+#}/call CopyMultiMatches()<cr>p
"noremap ,f 0"+y0 :g/{\$\w\+}/call CopyMultiMatches()<cr>p
noremap ,$ 0"+y0 :g/\$\w\+/call CopyMultiMatches()<cr>p
noremap <leader>z 0"+y0 :g/^\w\+@\w\+/call CopyMultiMatches()<cr>p
noremap <leader>a 0"+y0 :g/.*function\&.*Action()/call CopyMultiMatches()<cr>p
"Show list of all vars included in {#var#} (Smarty)
"noremap <leader>f :g/{#.\+#}/p<cr>
"noremap <leader>f :g/{#\w\+#}/y A<cr>
"beautify code {}
"noremap <leader>n :%s/{/\r{/g<cr>gg=G
noremap <leader>' :s/'/\\'/g<cr>
noremap <leader>' :s/"/\\"/g<cr>
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
noremap cir f=lC<space>

" -----------------------------------META(ALT)-----------------------------------
vmap <M-;> <esc>:'<,'>B s/\n/,\r/g<cr>gv=
vmap <M-,> <esc>:'<,'>B s/\n/,\r/g<cr>vaB=
"noremap <M-,> <esc>f,l
"search in the selected area
"noremap <M-a>
"Copy this line to that position
map <c-c> :<c-r>=line(".")<cr>co
"inoremap <M-d> <ESC>:AutoPreviewToggle<CR>i
"Clear table information that is come from db
imap <M-e> <esc>2la
noremap <M-e> "_diw[p
"map S diw"2P

"noremap <M-f> [m
"search for two words in buffers
noremap <M-f> /.*function\&.*
noremap <M-d> /.*def\&.*
noremap <M-g> g]

imap <M-h> <esc>^i
imap <M-l> <esc>$a
imap <M-j> <esc>gji
imap <M-k> <esc>gki

noremap <M-h> ^
noremap <M-j> <c-w>b
noremap <M-k> <c-u>
noremap <M-j> <c-d>
noremap <M-l> $
imap <C-Space> <c-n>
"map <M-m> :<c-r>=line(".")<cr>,4mo5
noremap <M-s> :GrepBuffer<cr>


" Mark Corey
" ---------------------------------------------------------------------
map mm <Plug>Place_sign
map <M-m> <Plug>Goto_prev_sign
inoremap <M-n> <Plug>Goto_next_sign

"Put from clipboard
map <M-p> :YRShow<cr>
" Quoting word back in insert mode
noremap <M-q> f'l
imap <silent><M-q> <esc>m`bysw'``
" Поиск и замена слова под курсором
nmap <M-r> :%s//
vmap <M-r> :B s/\<<c-r>=expand("<cword>")<cr>\>/
"snippets
noremap <M-t> :ToggleWord<cr>
noremap <M-s-t> <esc>"aditi<?=$this->translate('<esc>"a]pa')?><esc>
"Remove back
imap <M-w> <c-w>
" Jump to next window very usefull
noremap <M-w> <c-w>w
"imap <M-x> <esc>f'ci'<C-r>.<esc>
"map <M-x> f'ci'<C-r>.
"map <M-x> <esc>:NERDTree<cr>
"noremap <M-z>
"imap <M-=> =>
"imap <M-'> <esc>f'l
"noremap <M-'> f'l

"Very usefull
vmap <M-/> <Esc>/\%V
noremap gd <c-]><cr>

"-----------------------------------SHIFT-----------------------------------
"open tag in window
"browse file with w3m
noremap <S-b> ^"ay$:!w3m <c-r>a<cr>
noremap <S-y> y$
"Last commented
"noremap <S-Right> gt
"noremap <S-Left> gT
"noremap <S-Right> gt
" Заставляем shift-insert работать как в Xterm
"Last commented Thu Nov 27 14:23:02 EET 2008
"map <S-Insert> <MiddleMouse>

" -----------------------------------CTRL-----------------------------------
" map CTRL-L to piece-wise copying of the line above the current one
"inoremap <c-l> @@@<ESC>hhkywjl?@@@<CR>P/@@@<CR>3s

"Last commented Thu Nov 27 14:23:02 EET 2008
nmap <C-a> ggvG$
"noremap <C-b>
" C-c and C-v - Copy into global clipboard
"vmap <C-C> "+yi
"noremap <C-d>
"noremap <C-e>
"nnoremap <silent> <C-f><C-t> :FuzzyFinderTag!<CR>
"noremap <C-g>
"go to previous tab
noremap <c-h> gT
imap <c-h> <c-w>
"noremap <C-i> in vim use (Move to the previous jump from history)
noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_
"go to next tab
noremap <C-l> gt
"noremap <C-m>
"noremap <C-n>
"noremap <C-o>
"noremap <C-p>
"noremap <C-q>
"noremap <C-r>
noremap <c-t> :tabe<cr>
"noremap <C-u>
"imap <C-V> <esc>"+gPi
"noremap <C-x>
"noremap <C-w>
"noremap <C-z>
"
"vnoremap <c-/> y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>gV
vnoremap <c-/> <esc>,cc
vnoremap <c-?> y?\V<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>gV
" GTAGS\
"Remove word back insert mode
"imap <C-backspace> <c-w>
"Remove word back normal mode and switch to insert mode

" ----------------------------------- , -----------------------------------

nmap <leader>b :CtrlPBuffer<cr>

noremap <leader>f :CtrlP<cr>
noremap ,d  iAdded by baz@optimum-web.com <esc>:r! date<cr>kJ

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

noremap <leader>o :SessionList<cr>
noremap ,o :SessionList<cr>
noremap <leader>r :Gbuffersearch<cr>
noremap <leader>re :Greplace<cr>
noremap <leader>rd :DirReplace<cr>
noremap <leader>s :SessionSave<cr>

noremap ,v :edit ~/.vimrc<cr>
noremap <leader>g :edit ~/.gvimrc<cr>
noremap <leader>w <c-w>w
"Remove empty lines
noremap <leader>x :%s /^\n\{1}//g<cr>
"Recursive search and replace
inoremap ,, <esc>m`F4r$``a
vmap <leader><leader> <esc>:'<,'>B s/,/,\r/g<cr>

vnoremap <leader>[ :%s/^\@<!{/\r{\r/g<cr>
vnoremap <leader>] :%s/^\@<!}/\r}/g<cr>
vnoremap <leader>< :%s/^\@<!</\r<\r/g<cr>


" ----------------------------------- LEADER -----------------------------------
noremap \u :%s/<c-V><c-M>/<c-V><c-M>/g
map \gr :r!find ./* -type f -iname "*.py" -exec grep -HEnq 'def myfunc(' {} \; -a -print
noremap <leader>v :edit ~/.vimrc<cr>
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
"noremap (  f(l
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
"nmap <F1> :reg<cr>
" F2 - быстрое сохранение
"nmap <F2> :w<cr>:TlistUpdate<cr>
"vmap <F2> <esc>:w<cr>:TlistUpdate<cr>i
"imap <F2> <esc>:w<cr>:TlistUpdate<cr>i
"nmap <F1> :YRShow<cr>
"vmap <F1> <esc>:YRShow<cr>
"imap <F1> <esc>:YRShow<cr>

"nmap <F1> :w!<cr>
"vmap <F1> :w!<cr>
"imap <F1> :w!<cr>

nmap <M-y> :YRShow<cr>
vmap <M-y> <esc>:YRShow<cr>

map <F2> :w!<cr>:%retab!<cr>
nmap <F2> :w!<cr>:%retab!<cr>
vmap <F2> :w!<cr>:%retab!<cr>
imap <F2> <esc>:w!<cr>:%retab!<cr>

map <c-s> :w!<cr>
imap ZZ <esc>:make<cr> :w!<cr>
nmap <F3> :new<cr>
vmap <F3> :new<cr>
imap <F3> <esc>:new<cr>
" F5 - просмотр списка буферов

let g:NERDTreeBookmarksFile = "~/.vim/bookmarks"
let NERDTreeShowHidden=1
map <F1> :NERDTreeToggle<cr>
vmap <F1> <esc>:NERDTreeToggle<cr>i
imap <F1> <esc>:NERDTreeToggle<cr>i
let NERDTreeIgnore=['\.pyc$']

nmap t :FufTag<cr>

"map <F12> :FufFile<cr>
map <F12> :CtrlP<cr>
map <leader>o :CtrlPMRU<cr>


let g:EasyMotion_mapping_f = '?'
"let g:EasyMotion_mapping_t  = 'f'
let g:EasyMotion_mapping_gE = '#'
let g:EasyMotion_do_shade = 0

map <F4> :Replace

map <M-F7> :Rgrep<cr>
vmap <M-F7> <esc>:Rgrep<cr>
imap <M-F7> <esc>:Rgrep<cr>

map <c-f> :find
vmap <c-f> :find
imap <c-f> :find
noremap <F7> :GrepBuffer<cr>
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

let g:SuperTabLongestHighlight = 1
let g:SuperTabMidWordCompletion = 1
let g:SuperTabRetainCompletionType = 1

"" Omnicompletion popup settings
"" set 4 symbols before completion starts
let g:acp_behaviorHtmlOmniLength=4
let g:acp_behaviorKeywordLength=4


let g:Signs_file_path_corey='/home/vs/.vim/tmp/vimmarks'


function! GetHTML()
python << EOF
import vim, BeautifulSoup, urllib
handle = urllib.urlopen(vim.current.line)
soup = BeautifulSoup.BeautifulSoup(handle.read())
vim.current.buffer[:] = soup.prettify().split('\n')
EOF
endfunction

set et  "Tabs to spaces
" Tab is tab \t
"set noet "Spaces to tabs
"set tw=0
"Remove unwaanted spaces at the end of each line!!!!!!!!!!!!!!!!!SUPER
autocmd BufWritePre * :%s/\s\+$//e

au BufRead,BufNewFile  *.tpl   set ft=html
au BufRead,BufNewFile  *.wsgi  set ft=python
au BufRead,BufNewFile  *.py    set ft=python
au BufRead,BufNewFile  *.txt   set dictionary+=/usr/share/dict/words
au BufRead,BufNewFile  *.txt   set spell spelllang=en_us
au BufRead,BufNewFile  *.txt   set spell spelllang=en_us
au BufRead,BufNewFile  *.html  set ft=html

au BufRead,BufNewFile  *.js    set ft=javascript
":autocmd BufRead,BufNewFile *.js set ft=javascript.jquery
"au BufRead,BufNewFile *.js set ft=javascript.jquery
"au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

"au FileType python set sw=4 sts=4 ts=4 et
"
au FileType javascript :map <F9> :make<cr>

au BufRead,BufNewFile  *.phtml *.html.twig set ft=html
au FileType php set sw=4 sts=4 ts=4 et
au FileType phtml set sw=2 sts=2 ts=2 et
au FileType phtml set sw=2 sts=2 ts=2 et
au FileType html set sw=2 sts=2 ts=2 et
au FileType twig set sw=2 sts=2 ts=2 et

"au Filetype smarty exec('set dictionary=~/.vim/syntax/smarty.vim')
"au Filetype smarty set complete+=k
"
" Jump to the last edited position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

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

"inoremap <expr> -  smartchr#loop('->', '_', '-')
inoremap <expr> $  smartchr#loop('$', '$this->', '$("#")', '$$')
inoremap <expr> &  smartchr#loop('&', '&&', '&nbsp;')
inoremap <expr> -  smartchr#loop('-', '--', '->')
inoremap <expr> ==  smartchr#loop('==', '=>', '<?=?>')
inoremap <expr> %  smartchr#loop('%','%%','{% %}')

"silent map <M-v> :SfSwitchView <CR>

"" Включить автоотступы
set autoindent
" Размер табулации по умолчанию
set tabstop=4
set sw=4
set sts=4
" use tabs instead of spaces
set noexpandtab

" Включаем "умные" отспупы ( например, автоотступ после    {)
set smartindent
nnoremap ,s  :<C-U>setlocal lcs=tab:>-,trail:-,eol:$ list! list? <CR>
