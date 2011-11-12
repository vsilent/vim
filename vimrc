"let g:ctrlp_map = '<space>'
"nmap <space> :CtrlPBuffer<cr>
"map <space> :CtrlPBuffer<cr>
"let g:ctrlp_working_path_mode = 2
"let g:ctrlp_by_filename = 1

"if v:this_session
	"let g:ctrlp_root_markers = [v:this_session]
	"
	"let g:ctrlp_root_markers = ['/home/vs/work/cams']
"endif
:set nocursorline


let ropevim_extended_complete=1
let ropevim_vim_completion=0
" Usefull regexp for "/" search
"
"split('\[\/\.-\]'
":%s//preg_split('\/[\\\/-]\/'/gcl

let g:nickID = 'Anonymous'
"   Настройки   для Tlist   (показвать  только  текущий файл    в   окне
"навигации   по      коду)
let g:Tlist_Show_One_File       = 0
let g:Tlist_Process_File_Always = 1
let g:Tlist_Show_Menu           = 1
let g:Tlist_Display_Prototype   = 1
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
    set titlestring+=%f\                                              " file name
    set titlestring+=%h%m%r%w                                         " flags
    set titlestring+=\ -\ %{v:progname}                               " program name
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
set statusline+=%2*%-3.3n%0*\                " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%1*%m%r%w%0*               " flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}, " filetype
set statusline+=\enc:\ %{&encoding},         " encoding
set statusline+=\fenc:\ %{&fileencoding},    " file encoding
set statusline+=\termenc:\ %{&termencoding}, " term encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset


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

"" Включить автоотступы
set autoindent

"" allow to use backspace instead of "x"
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Размер табулации по умолчанию
set shiftwidth=4
set tabstop=4
set sw=4
set sts=4


" Включаем "умные" отспупы ( например, автоотступ после      {)
set smartindent
" Fix <Enter> for comment
set fo+=cr
" Опции сесссий
set sessionoptions=curdir,buffers,tabpages
" set vertical and horizontal lines
" Don't use it, it slowdowns vim
":set cursorline
":set cursorcolumn
filetype plugin on
filetype indent on
let foldenable = 0

syntax on "Syntax on

"Tags
"set showfulltag
set tags=./tags,tags

set wildignore=*.o,*.obj,*.exe,*.dll,*.com,*.class,*.au,*.wav,*.mp[23g],*.jar,*.rar,*.zip,*.gz,*.tgz,*.jpg,*.png,*.gif,*.avi,*.wmv,*.flv,*.djvu,*.pdf,*.chm,*.ps,*.dvi,tags,*/CVS/,*/.hg/,*.~*,*~,*.sql,*.svn
"set wildmode=list:longest,full
"set wildmode=full
set wildmode=longest,list,full
set wildmenu

set lazyredraw		" Don't redraw while executing macros
set nolist          " Don't show  as ^I and end-of-line as $
set shortmess=aOItT	" To avoid the 'Hit ENTER to continue' prompt
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
"noremap 77 :Bsf \.php <c-r>=expand("<cword>")<cr>
"map <m-q>  <esc>:wq!<cr>
imap ø <esc>C
imap Â <esc>C
"map mn <S-F1>
"
"Copy that line to this position
nmap _ ggy$``o<esc>pV=
nmap <m-a> ggy$``o<esc>pV=
nmap <m-4> this->
imap <M-Tab> <esc>dBi$this->getRequest->getParam('<esc>]pi');

"***********************   MAPPINGS  ***********************
" mapping will find all {#vars#} in the template and will copy them in the
" clipboard (ULTRA !!!!!!!!)
noremap <leader>f 0"+y0 :g/{#\w\+#}/call CopyMultiMatches()<cr>p
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


"noremap <silent>{  f{l
"noremap <silent>}  f}h
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
noremap <M-b> viB
"Copy this line to that position
map <M-c> :<c-r>=line(".")<cr>co
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
"imap <M-b> <esc>b

noremap <M-h> ^
"noremap <M-i> g,
"noremap <M-i> :cclose<cr>
noremap <M-j> <c-w>b
noremap <M-k> <c-u>
noremap <M-j> <c-d>
noremap <M-l> $
imap <M-Space> <c-n>
imap <C-Space> <c-n>
"map <M-m> :<c-r>=line(".")<cr>,4mo5


" Mark Corey
" ---------------------------------------------------------------------
map mm <Plug>Place_sign
map <M-m> <Plug>Goto_prev_sign
inoremap <M-n> <Plug>Goto_next_sign

"map  <M-o> :call ToggleQuickFix()<cr>
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
noremap <M-u> <c-u>
"noremap <M-v> f"l
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
"imap <M-Backspace> <c-w>

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
set keywordprg=~/.vim/manuals/php_doc

" -----------------------------------CTRL-----------------------------------
" map CTRL-L to piece-wise copying of the line above the current one
"inoremap <c-l> @@@<ESC>hhkywjl?@@@<CR>P/@@@<CR>3s

"Last commented Thu Nov 27 14:23:02 EET 2008
nmap <C-a> ggvG$
"noremap <C-b>
" C-c and C-v - Copy into global clipboard
vmap <C-C> "+yi
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
imap <C-V> <esc>"+gPi
"noremap <C-x>
"noremap <C-w>
"noremap <C-z>
"
vnoremap <c-/> y/\V<C-R>=substitute(escape(@@,"/\\"),"\n","\\\\n","ge")<CR><CR>gV
vnoremap <c-?> y?\V<C-R>=substitute(escape(@@,"?\\"),"\n","\\\\n","ge")<CR><CR>gV
" GTAGS\
"map <C-\> :GtagsCursor<CR>
"vmap <C-x> "*d
"Remove word back insert mode
"imap <C-backspace> <c-w>
"Remove word back normal mode and switch to insert mode
"noremap <C-backspace> diw

" ----------------------------------- , -----------------------------------

"noremap ,a
" View local database table
"map ,b  :r !~/bin/viewdb.sh
"noremap ,b  O<br><esc>
"noremap <leader>b :call SearchInBasket()<cr>
"noremap ,b :call SearchInBasket()<cr>
"map ,b :BufferExplorer<cr>
"vmap ,b <esc>:BufferExplorer<cr>
"nmap ,b :b
nmap ,b :CommandTBuffer<cr>
"noremap ,c
"noremap ,de debug( $rs, ' this is a debug string in <C-R>% line:<C-R>=line('.')<C-M> ');
noremap ,d Added by vs@webdirect.md <esc>:r! date<cr>kJ
" View external database table
map ,e  :r !~/bin/viewextdbt.sh
map ,ed  :r !~/bin/viewextdb.sh
"noremap ,f :call ShowFuncName()<CR>
"noremap ,g
"noremap ,h
"noremap ,i
"noremap ,j
"noremap ,k
" Sessionman
"noremap ,l :OpenLastSession<cr>
"noremap ,l :new ~/.logfiles<cr>
" Marks Corey settings
" If you want to save the marks to a file. Do it like below:
" Save marks.
map ,m :call Save_signs_to_file()<cr>
" Do this, after opening all your marked files
map ,l :call Load_signs_from_file()<cr>
"Used for displaying function prototype

noremap ,h :new ~/.mc/hotlist<cr>
"noremap ,h :TBrowseOutput  ~/.mc/hotlist<cr>
noremap ,n g,
noremap ,o :SessionList<cr>

noremap ,r :Gbuffersearch<cr>
noremap ,re :Greplace<cr>
noremap ,rd :DirReplace<cr>
noremap ,s :SessionSave<cr>
"View local database table
map ,t  :r !~/bin/view.sh
"noremap ,u
noremap ,v :edit ~/.vimrc<cr>
noremap ,g :edit ~/.gvimrc<cr>
noremap ,w <c-w>w
"Remove empty lines
noremap ,x :%s /^\n\{1}//g<cr>
"noremap ,y
"noremap ,z
"Recursive search and replace
"noremap <silent>,/ :cal VimCommanderToggle()<CR>
noremap <silent>,/ <esc>:Cdb <tab>
inoremap ,, <esc>m`F4r$``a
vmap ,, <esc>:'<,'>B s/,/,\r/g<cr>
" map enter key
"map <M-cr> i<cr><esc>
"map <c-cr> i<cr><esc>

vnoremap ,[ :%s/^\@<!{/\r{\r/g<cr>
vnoremap ,] :%s/^\@<!}/\r}/g<cr>
vnoremap ,< :%s/^\@<!</\r<\r/g<cr>


" ----------------------------------- LEADER -----------------------------------
" dump php variable
noremap <leader>d2u :%s/\r/ /g
map <leader>gr :r!find ./* -type f -iname "*.class.php" -exec grep -HEnq 'myfunc(' {} \; -a -print
"find -type f -iname "*.php" -exec grep -HEn 'Location' {} \;
noremap <leader>v :edit ~/.vimrc<cr>
"vnoremap \\ :B s/<.[^{]*>//g<cr>
map <Leader>tr :call TranslateWord()<CR>
map <leader>o :FufFile <C-r>=expand('<cword>')<CR><CR>
noremap \s :source ~/.vimrc<cr>
map <Leader>w :sav! ~/temp/test.html<CR>
nnoremap <Leader>whites :call ToggleShowWhitespace()<CR>
noremap <leader>spell 	:set spell spelllang=en_us<cr>
" Set xterm window title
highlight ExtraWhitespace ctermbg=red guibg=red


" Quoting word back in insert mode end
"imap {<CR> {<CR><Esc>i}<esc>O
"imap [' ['']<LEFT><LEFT>
"imap [" [""]<LEFT><LEFT>
map "" m`ysw"``
map qw m`ysw'``
map qb ysb'
noremap (  f(l
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
:nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>
" This version will work across newlines:
:nnoremap <silent> gw "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>
"To use gl to swap the current word with the previous, keeping cursor on current word: (This feels like "pushing" the word to the left.) (See note.)
":nnoremap <silent> gl "_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o><c-l>
"To use gr to swap the current word with the next, keeping cursor on current word: (This feels like "pushing" the word to the right.) (See note.)
:nnoremap <silent> gr "_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr><c-o>/\w\+\_W\+<CR><c-l>
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
"nmap <F2> :w<cr>
"nmap <F1> :YRShow<cr>
"vmap <F1> <esc>:YRShow<cr>
"imap <F1> <esc>:YRShow<cr>

"nmap <F1> :w!<cr>
"vmap <F1> :w!<cr>
"imap <F1> :w!<cr>

nmap <M-y> :YRShow<cr>
vmap <M-y> <esc>:YRShow<cr>
"map <F2> :make<cr> :w!<cr>
"nmap <F2> :make<cr> :w!<cr>
"vmap <F2> <esc>:make<cr> :w!<cr>
"imap <F2> <esc>:make<cr> :w!<cr>

map <F2> :w!<cr>
nmap <F2> :w!<cr>
vmap <F2> :w!<cr>
imap <F2> <esc>:w!<cr>

map <c-s> :w!<cr>
imap ZZ <esc>:make<cr> :w!<cr>
" F3 - новый таб
nmap <F3> :tabe<cr>
vmap <F3> :tabe<cr>
imap <F3> <esc>:tabe<cr>
"nmap <c-t> :tabe<cr>
"vmap <c-t> :tabe<cr>
"Commented because yankring.vim uses c-n
"nmap <c-S-n> :tabe<cr>
"vmap <c-S-n> :tabe<cr>
" F5 - просмотр списка буферов

map <F1> :NERDTreeToggle<cr>
vmap <F1> <esc>:NERDTreeToggle<cr>i
imap <F1> <esc>:NERDTreeToggle<cr>i

"map <F5> :FufTag<cr>
"vmap <F5> <esc>:FufTag<cr>i
"imap <F5> <esc>:FufTag<cr>i

nmap <M-Space> :FufTag<cr>
nmap t :FufTag<cr>


map  <M-o> :FufQuickFix<cr>
map  <M-i> :FufQuickFix<cr>
""map <F5> :BufferExplorer<cr>
""vmap <F5> <esc>:BufferExplorer<cr>i
""imap <F5> <esc>:BufferExplorer<cr>i
"nmap <F12> :FufBuffer<cr>

"map <F12> :FufFile<cr>
"nmap <F12> :TSelectBuffer<cr>
"nmap <F12> :BufferExplorer<cr>
"vmap <F12> <esc>:FufBuffer<cr>i
"vmap <F12> <esc>:FufFile<cr>i
"vmap <F12> :TSelectBuffer<cr>


"map <F6> :FufMruFile<cr>
"vmap <F6> <esc>:FufMruFile<cr>
"imap <F6> <esc>:FufMruFile<cr>
"let g:EasyGrepMode = 2
"let g:EasyGrepIgnoreCase=1
"let g:EasyGrepJumpToMatch=1
"let g:EasyGrepRecursive=1
let g:EasyMotion_mapping_f = '?'
"let g:EasyMotion_mapping_t  = 'f'
let g:EasyMotion_mapping_gE = '#'
let g:EasyMotion_do_shade = 0

"map <F4> <plug>EgMapReplaceCurrentWordr
map <F4> :Replace
"map <F4> :argdo %s/text_want_to_replace/text to replace/ge | update
":r! find -type f -iname "*.php" -exec grep -E 'addItem' {} \; -a -print

map <F7> :Rgrep<cr>
vmap <F7> <esc>:Rgrep<cr>
imap <F7> <esc>:Rgrep<cr>


map <c-f> :find
vmap <c-f> :find
imap <c-f> :find
noremap <M-F7> :GrepBuffer<cr>
" F8 - delete buffer
map <F8> :bd<cr>
vmap <F8> <esc>:bd<cr>
imap <F8> <esc>:bd<cr>
" F9 - "make" команда
map <F9> :make<cr>
vmap <F9> <esc>:make<cr>i
imap <F9> <esc>:make<cr>i
" F10 - unload buffer but keep it in the buffer list
map ,k :bd<cr>
map <F10> :bun!<cr>
vmap <F10> <esc>:bun!<cr>
imap <F10> <esc>:bun!<cr>
" F11 - показать окно Taglist
map <F11> :TlistToggle<cr>
vmap <F11> <esc>:TlistToggle<cr>
imap <F11> <esc>:TlistToggle<cr>
"
" space - обозреватель файлов

nmap <space> :FufBuffer<cr>
"map <space> :FufFile<cr>
"vmap <space> <esc>:FufFile<cr>i
vmap <space> <esc>:FufBuffer<cr>i

"map <space> :CommandT<cr>
"vmap <space> <esc>:CommandT<cr>

map <S-space> :FufRenewCache<cr>
imap <S-space> <esc>:FufRenewCache<cr>
vmap <S-space> <esc>:FufRenewCache<cr>
" Выключаем ненавистный режим замены
"imap >Ins> <Esc>i
" visual shifting (does not exit Visual mode)
"vnoremap < <gv
"vnoremap > >gv
"Here is  a big problem with C-I and <TAB> cause this is the same in VIM
"nnoremap <c-tab> >>
"noremap <silent><S-tab> <<
"imap <S-tab> <esc><<i
"don't uncomment because ctrl+i and tab is the same
"nmap <tab> >>
vmap <tab> >>
vmap <S-tab> <<
nmap <S-tab> <<
""***********************   PLUGIN'S SETTINGS ***********************
"let g:qnamebuf_hotkey = "<Space>"
"Echofunc
let g:EchoFuncLangsUsed = ["php"]
let g:EchoFuncMaxBalloonDeclarations = 2
"g:EchoFuncKeyNext
"g:EchoFuncKeyPrev

let g:SuperTabLongestHighlight = 1
let g:SuperTabMidWordCompletion = 1
let g:SuperTabRetainCompletionType = 1

"" Omnicompletion popup settings
"" set 4 symbols before completion starts
let g:acp_behaviorHtmlOmniLength=4
let g:acp_behaviorKeywordLength=4
"
let PHP_autoformatcomment = 1 "default is 1)
"To disable autoformating of comment by default.
"If set to 0, this script will let the 'formatoptions' setting intact.

"let PHP_default_indenting = # of sw (default is 0)
"# of sw will be added to the indent of each line of PHP code (non PHP code isn't affected).
"let PHP_removeCRwhenUnix = 1
"Will make the script automatically remove CR at end of lines (by default this option is unset), NOTE that you MUST remove CR when the fileformat is UNIX else the indentation won't be correct...

let PHP_BracesAtCodeLevel = 1
" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)
let php_sql_query=1
let php_htmlInStrings=1
"Will indent the '{' and '}' at the same level than the code they contain.

""Fuzzy Finder Options
nnoremap <silent> <C-]> :FufTag! <C-r>=expand('<cword>')<CR><CR>
let g:fuf_enumerating_limit = 8
"let g:.fuf_reuseWindow = 1
let g:taggedfile = 'tags'
let g:fuf_infoFile = '/home/vs/.vim/tmp/.vimfuzzyfinderinfo'
let g:fuf_abbrevMap = {'^':["**/"]}
let g:fuf_mrufile_maxItem=10
let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.gz$|\.sql$|\.bak$|\.gif$|\.small$|\.ico$|\.big$|\.middle$|\.\d+$|\.png$|\.jpg$|\.swp$|\.cvs$|\.svn|\.pyc|\.cvsignore$|\.tpl\.php$|\.html\.php$|((^|[/\\])\.[/\\]$)'
let g:fuf_dir_exclude = '\v(^|[/\\])\.{1,2}[/\\]$|^images$|^image$|CVS$|\.CVS$|tmp$|cache$|thumbs$|store$|.svn$'
let g:fuf_ignoreCase = 1
let g:fuf_enumeratingLimit = 10
let g:fuf_previewHeight = 1
let g:fuf_maxMenuWidth = 178
let g:fuf_smartBs = 1
let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]


let g:Signs_file_path_corey='/home/vs/.vim/tmp/vimmarks'
"
" GREP plugin
:let Grep_Default_Filelist = '*.php '
:let Grep_Skip_Dirs = 'tmp img cache images cvs files .svn'
:let Grep_Skip_Files = '*.bak *~ *.gif *.png *.jpg *.sql tags *.pyc'
" Autocompl popup of snipmate
:let g:acp_behaviorSnipmateLength = 1


function! GetHTML()
python << EOF
import vim, BeautifulSoup, urllib
handle = urllib.urlopen(vim.current.line)
soup = BeautifulSoup.BeautifulSoup(handle.read())
vim.current.buffer[:] = soup.prettify().split('\n')
EOF
endfunction

"set et  "Tabs to spaces
" Tab is tab \t
set noet
"set tw=0
"Remove unwaanted spaces at the end of each line!!!!!!!!!!!!!!!!!SUPER
autocmd BufWritePre * :%s/\s\+$//e

au BufRead,BufNewFile  *.phtml set ft=html
au BufRead,BufNewFile  *.tpl   set ft=html
au BufRead,BufNewFile  *.wsgi   set ft=python
au BufRead,BufNewFile  *.txt   set dictionary+=/usr/share/dict/words
au BufRead,BufNewFile  *.txt   set spell spelllang=en_us
au BufRead,BufNewFile  *.txt   set spell spelllang=en_us
au BufRead,BufNewFile  *.html  set ft=html
au BufRead,BufNewFile  *.js    set ft=javascript
":autocmd BufRead,BufNewFile *.js set ft=javascript.jquery
"au BufRead,BufNewFile *.js set ft=javascript.jquery
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au FileType php set omnifunc=phpcomplete#CompletePHP

"spaces only for php and python files
au FileType php set sw=4 sts=4 ts=4 et
au FileType python set sw=4 sts=4 ts=4 et

au FileType python :map <F9> :!python %<cr>
au FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

au FileType phtml set sw=2 sts=2 ts=2 noet
au FileType html set sw=2 sts=2 ts=2 noet

"au Filetype smarty exec('set dictionary=~/.vim/syntax/smarty.vim')
"au Filetype smarty set complete+=k
"
" Jump ti the last edited position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif


""Session Manager
let g:SessionMgr_AutoManage  = 0
let g:SessionMgr_DefaultName = "mysession"

"function! SearchInBasket()
    "let word = input("Find in basket: ")
	"if word != ""
		"execute 'new | r!find /home/vs/.kde4/share/apps/basket/baskets -type f -iname "*.html" -exec egrep  "'.word.'" {} \;|html2text'
	"end
    ""execute "vimgrep ".word." ~/.kde/share/apps/basket/baskets/*"
"endfunction
"for c in split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ', '\zs')
    "exec 'noremap <Leader>g'. c .' :TTags '. c .'<cr>'
"endfor
function! TranslateWord()
  let s:dict    = "sdcv -w"
  let s:phrase  = expand("<cword>")
  let s:tmpfile = tempname()
  silent execute "!" . s:dict . " " . s:phrase . " > " . s:tmpfile
  let s:lines = system("wc -l " . s:tmpfile . "| awk '{print $1}'")
  if s:lines == 0
    echo s:phrase . ": Not found."
  else
    execute "botright sp " . s:tmpfile
  end
endfun
" Use 0"+y0 to clear the clipboard, then
"    :g/pattern/call CopyMultiMatches()
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
"   :g/pattern/call CopyMatches()
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

"map ё `
"map й q
"map ц w
"map у e
"map к r
"map е t
"map н y
"map г u
"map ш i
"map щ o
"map з p
"map х [
"map ъ ]
"map ф a
"map ы s
"map в d
"map а f
"map п g
"map р h
"map о j
"map л k
"map д l
"map ж ;
"map э '
"map я z
"map ч x
"map с c
"map м v
"map и b
"map т n
"map ь m
"map б ,
"map ю .
"map Ё ~
"map Й Q
"map Ц W
"map У E
"map К R
"map Е T
"map Н Y
"map Г U
"map Ш I
"map Щ O
"map З P
"map Х {
"map Ъ }
"map Ф A
"map Ы S
"map В D
"map А F
"map П G
"map Р H
"map О J
"map Л K
"map Д L
"map Ж :
"map Э "
"map Я Z
"map Ч X
"map С C
"map М V
"map И B
"map Т N
"map Ь M
"map Б <
"map Ю >

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("function.*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun

:hi wikiHeader1 guifg=#FF0000
:hi wikiHeader2 guifg=#00FF00
:hi wikiHeader3 guifg=#0000FF
:hi wikiHeader4 guifg=#FF00FF
:hi wikiHeader5 guifg=#00FFFF
:hi wikiHeader6 guifg=#FFFF00

let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Author = "Vasilii Pascal <vs@webdirect.md>"
let g:pdv_cfg_Version = "1.0"
let g:pdv_cfg_ReturnVal = "void"
let g:pdv_cfg_Copyright = "@copyright "
let g:pdv_cfg_License = ""

"inoremap <expr> -  smartchr#loop('->', '_', '-')
inoremap <expr> $  smartchr#loop('$', '$this->', '$("#")', '$$')
inoremap <expr> &  smartchr#loop('&', '&&', '&nbsp;')
inoremap <expr> s  smartchr#loop('s', 'ss', 'self.')
inoremap <expr> -  smartchr#loop('-', '->', '--')
inoremap <expr> ==  smartchr#loop('==', '=>')
"inoremap <expr> %  smartchr#loop('%','%%',{% %}')
nmap p  p==
let g:yankring_enabled = 0
silent map <M-v> :SfSwitchView <CR>

let g:user_zen_expandabbr_key = '<c-e>'
let g:use_zen_complete_tag = 1
let NERDTreeIgnore=['\.pyc$']


