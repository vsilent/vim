"
" Settings for PHP filetype
"
"
" Load PHP Documentor for VIM
source ~/.vim/php-doc.vim
" Set up automatic formatting
set formatoptions+=tcqlro
" Jump to matching bracket for 3/10th of a second (works with showmatch)
"set matchtime=3
"set showmatch
" Set maximum text width (for wrapping)
"set textwidth=80
"
" Syntax options
"
" Enable folding of class/function blocks
let php_folding = 0
" Do not use short tags to find PHP blocks
let php_noShortTags = 1
" Highlighti SQL inside PHP strings
"let php_sql_query=1
"
" Linting
"
" Use PHP syntax check when doing :make
set makeprg=php\ -l\ %

" Parse PHP error output
set errorformat=%m\ in\ %f\ on\ line\ %l
set keywordprg=~/.vim/manuals/php_doc
map \gr :r!find ./* -type f -iname "*.class.php" -exec grep -HEnq 'myfunc(' {} \; -a -print

" Function to locate endpoints of a PHP block {{{
function! PhpBlockSelect(mode)
	let motion = "v"
	let line = getline(".")
	let pos = col(".")-1
	let end = col("$")-1

	if a:mode == 1
		if line[pos] == '?' && pos+1 < end && line[pos+1] == '>'
			let motion .= "l"
		elseif line[pos] == '>' && pos > 1 && line[pos-1] == '?'
			" do nothing
		else
			let motion .= "/?>/e\<CR>"
		endif
		let motion .= "o"
		if end > 0
			let motion .= "l"
		endif
		let motion .= "?<\\?php\\>\<CR>"
	else
		if line[pos] == '?' && pos+1 < end && line[pos+1] == '>'
			" do nothing
		elseif line[pos] == '>' && pos > 1 && line[pos-1] == '?'
			let motion .= "h?\\S\<CR>""
		else
			let motion .= "/?>/;?\\S\<CR>"
		endif
		let motion .= "o?<\\?php\\>\<CR>4l/\\S\<CR>"
	endif

	return motion
endfunction
" }}}

" Mappings to select full/inner PHP block
nmap <silent> <expr> vaP PhpBlockSelect(1)
nmap <silent> <expr> viP PhpBlockSelect(0)
nmap <silent> <m-b> viB
" Mappings for operator mode to work on full/inner PHP block
"omap <silent> aP :silent normal vaP<CR>
"omap <silent> iP :silent normal viP<CR>
" Mappings for PHP Documentor for VIM
inoremap <buffer> <C-P> <Esc>:call PhpDocSingle()<CR>i
nnoremap <buffer> <C-P> :call PhpDocSingle()<CR>
vnoremap <buffer> <C-P> :call PhpDocRange()<CR>
" Generate @uses tag based on inheritance info
let g:pdv_cfg_Uses = 1
" Set default Copyright
"let g:pdv_cfg_Copyright = "Copyright (C) 2013 WEB DIRECT SRL"

" Exuberant Ctags

nmap <silent> <F6> :!ctags -f ./tags -h ".php" -R
\ --exclude="\.cvs"
\ --exclude="*.xml"
\ --exclude="\.tmp"
\ --exclude="*.js"
\ --exclude="js"
\ --exclude="*.html"
\ --exclude="*.htm"
\ --exclude="*.gz"
\ --exclude="*.gzip"
\ --exclude="*.tar"
\ --exclude="*.zip"
\ --exclude="*.rar"
\ --exclude="*.sql"
\ --exclude="*.css"
\ --exclude="*.cvsignore"
\ --exclude="svn"
\ --exclude="CVS"
\ --exclude="*.htaccess"
\ --exclude="*.jpg"
\ --exclude="*.png"
\ --exclude="*.jpeg"
\ --exclude="*.gif"
\ --exclude="tags"
\ --exclude="*.swf"
\ --exclude="*.txt"
\ --exclude="*.log"
\ --exclude="*.tpl.php"
\ --exclude="styles"
\ --totals=yes
\ --tag-relative=yes
\ --PHP-kinds=+cf .<cr>
"\ --regex-PHP='/abstract class ([^ ]*)/\1/c/'
"\ --regex-PHP='/interface ([^ ]*)/\1/c/'
"\ --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
" vim: set fdm=marker:
noremap <M-t> :ToggleWord<cr>

""***********************   PLUGIN'S SETTINGS ***********************
"let g:qnamebuf_hotkey = "<Space>"
"Echofunc
let g:EchoFuncLangsUsed = ["php"]
let g:EchoFuncMaxBalloonDeclarations = 2
"g:EchoFuncKeyNext
"g:EchoFuncKeyPrev
"
"
let PHP_autoformatcomment = 1 "default is 1)
"To disable autoformating of comment by default.
"If set to 0, this script will let the 'formatoptions' setting intact.

"let PHP_default_indenting = # of sw (default is 0)
"# of sw will be added to the indent of each line of PHP code (non PHP code isn't affected).
"let PHP_removeCRwhenUnix = 1
"Will make the script automatically remove CR at end of lines (by default this option is unset), NOTE that you MUST remove CR when the fileformat is UNIX else the indentation won't be correct...

"let PHP_BracesAtCodeLevel = 1
" You might also find this useful
" PHP Generated Code Highlights (HTML & SQL)
let php_sql_query=1
"let php_htmlInStrings=1
"Will indent the '{' and '}' at the same level than the code they contain.

nnoremap <silent> <c-/> /<C-r>=expand('<cword>')
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

" GREP plugin
:let Grep_Default_Filelist = '*.php '
:let Grep_Skip_Dirs = 'tmp img cache images cvs files .svn'
:let Grep_Skip_Files = '*.bak *~ *.gif *.png *.jpg *.sql tags *.pyc'
" Autocompl popup of snipmate
:let g:acp_behaviorSnipmateLength = 1

set omnifunc=phpcomplete#CompletePHP

"spaces only for php and python files
"au FileType php set sw=4 sts=4 ts=4 et

"
" Размер табулации по умолчанию
set tabstop=4
set sw=4
set sts=4
" use tabs instead of spaces
set noexpandtab
" Включаем "умные" отспупы ( например, автоотступ после      {)
set smartindent


imap <M-u>:call PhpInsertUse()<CR>
map <M-u> :call PhpInsertUse()<CR>

fun! ShowFuncName()
  let lnum = line(".")
  let col = col(".")
  echohl ModeMsg
  echo getline(search("function.*$", 'bW'))
  echohl None
  call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
