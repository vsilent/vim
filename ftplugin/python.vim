" Exuberant Ctags

nmap <silent> <F6> :!ctags -f ./tags -h ".py" -R
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
"\ --PHP-kinds=+cf .<cr>
"\ --regex-PHP='/abstract class ([^ ]*)/\1/c/'
"\ --regex-PHP='/interface ([^ ]*)/\1/c/'
"\ --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'
" vim: set fdm=marker:
