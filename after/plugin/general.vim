"if exists('loaded_snippet')
	"imap <C-B> <Plug>Jumper
"endif
" Customize taglist settings
if exists('loaded_taglist')
	let Tlist_Ctags_Cmd = "/usr/local/bin/ctags-ex"
	let Tlist_Enable_Fold_Column = 0
	let Tlist_Exit_OnlyWindow = 1
	let Tlist_File_Fold_Auto_Close = 1
	let Tlist_Inc_Winwidth = 1
	let Tlist_Max_Submenu_Items = 15
	let tlist_php_settings = 'php;c:class;d:constant;f:function'
endif

" Set git executable for VCSCommand plugin
if exists('loaded_VCSCommand')
	let VCSCommandCVSExec="git"
endif
" vim: set fdm=marker:
