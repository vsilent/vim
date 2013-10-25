" Vim color file
" @Author: Pascal Vasilii <jabberroid@gmail.com>

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "silent"
set background=light

hi Cursor           guibg=#000000	guifg=WHITE		gui=NONE
hi LineNr           guibg=#eeeeee	guifg=#cccccc	gui=italic
hi StatusLineNC     guibg=#daf1f5	guifg=#DDDDDD	gui=italic
"hi StatusLine       guibg=#1D343B	guifg=#DDDDDD	gui=italic "true false
hi StatusLine       guibg=#daf1f5	guifg=#DDDDDD	gui=italic "true false
hi Title            guibg=WHITE		guifg=BLACK		gui=NONE
hi TablineSel       guibg=WHITE		guifg=BLACK		gui=NONE
hi CursorLine       guibg=#ffffff	guifg=BLACK		gui=NONE
hi CursorColumn     guibg=#fafafa	guifg=BLACK		gui=NONE
hi MatchParen       guifg=#141312	guibg=#FFFF66	gui=underline
hi AutoHiGroup      guibg=#FFF796	guifg=BLACK
hi SignColumn       guibg=#ffffff	guifg=BLACK		gui=NONE
hi Directory	    guibg=WHITE		guifg=#777777	gui=Bold
hi Tooltip   	    guibg=#eeeeee	guifg=DarkGray	gui=bold,italic
hi FoldColumn       guibg=#ffffff	guifg=BLACK		gui=NONE
hi VertSplit        guibg=#ffffff	guifg=#F1FFC1	gui=NONE
hi Wildmenu         guibg=#EEEEEE	guifg=BLACK		gui=NONE
hi Pmenu            guibg=#EEEEEE	guifg=BLACK		gui=italic
hi PmenuSbar        guibg=#EEEEEE 	guifg=fg		gui=italic
hi PmenuSel         guibg=#FFF796  	guifg=BLACK		gui=italic
hi PmenuThumb       guibg=#EEEEEE 	guifg=fg		gui=NONE
hi IncSearch        guibg=#FFFF66	guifg=BLACK		gui=NONE
hi Search           guibg=#daf1f5	guifg=#222222		gui=NONE
hi Normal	        guibg=#ffffff	guifg=#222222	gui=NONE
hi Visual	        guibg=#daf1f5 guifg=#222222		gui=NONE
hi VisualNos	    guibg=#daf1f5	guifg=#222222		gui=NONE
hi Comment	        guibg=WHITE		guifg=#aaaaaa	gui=italic
hi PerlPOD	        guibg=WHITE 	guifg=#B86A18	gui=NONE
hi Constant	        guibg=WHITE		guifg=#006e26	gui=NONE
hi Character	    guibg=WHITE 	guifg=#aaaaaa	gui=NONE
"hi String           guibg=WHITE 	guifg=#006e26   gui=italic
hi String           guibg=WHITE 	guifg=#83a380   gui=italic

hi Number	        guibg=WHITE 	guifg=#222222	gui=NONE
"nice red tomato
hi Boolean	        guibg=#ffffff 	guifg=#D80000	gui=NONE
hi Define	        guibg=WHITE 	guifg=#006E26	gui=NONE
" vars olive
"hi Identifier 	    guibg=WHITE 	guifg=#0057AE	gui=NONE
hi Identifier 	    guibg=WHITE 	guifg=#555555	gui=None
hi Exception 	    guibg=WHITE 	guifg=BLACK		gui=bold
hi Statement 	    guibg=WHITE 	guifg=#0057ae	gui=NONE
hi PreProc	        guibg=WHITE 	guifg=#141312	gui=NONE
hi Function	        guibg=WHITE 	guifg=#000000	gui=NONE
hi Repeat	        guibg=WHITE 	guifg=#B07E00	gui=NONE
hi Operator	        guibg=WHITE 	guifg=#000000	gui=NONE
hi Ignore	        guibg=WHITE 	guifg=bg
hi Folded           guibg=#F1FFC1	guifg=#101010	gui=italic
hi Error	        guibg=#D80000 	guifg=White		term=reverse  gui=NONE
hi Todo		        guibg=tomato 	guifg=White		term=standout gui=NONE
hi Done		        guibg=#00cc00		guifg=#CCEEFF	term=standout gui=NONE
hi SpellErrors      guibg=WHITE		guifg=#9C0D0D   gui=NONE
hi SpellBad         guibg=WHITE 	gui=undercurl   guisp=#9C0D0D
hi SpellCap         guibg=WHITE 	gui=undercurl   guisp=#9C0D0D
hi SpellLocal       guibg=WHITE 	gui=undercurl   guisp=#9C0D0D
hi SpellRare        guibg=WHITE 	gui=undercurl   guisp=#9C0D0D
hi MoreMsg          guibg=WHITE		guifg=BLACK		gui=NONE
hi ModeMsg          guibg=WHITE		guifg=BLACK		gui=NONE
hi DiffAdd          guibg=#CCFFCC	guifg=NONE		gui=NONE
hi DiffDelete       guibg=#FFCCCC 	guifg=NONE		gui=NONE
hi DiffChange       guibg=#F1FFC1 	guifg=NONE		gui=NONE
hi DiffText         guibg=WHITE		guifg=NONE		gui=NONE
hi Question         guibg=WHITE		guifg=BLACK		gui=NONE
hi Include			guibg=WHITE 	guifg=#141312 	gui=bold
hi SpecialChar		guibg=WHITE 	guifg=#141312 	gui=NONE
hi Underlined		guibg=WHITE 	guifg=#0057ae 	gui=underline
" ->
hi Structure		guibg=WHITE 	guifg=BLACK		gui=NONE
hi Chatacter		guibg=WHITE 	guifg=#ff0000	gui=NONE
hi Float	        guibg=WHITE 	guifg=#3facff	gui=bold
hi Macro			guibg=WHITE		guifg=BLACK		gui=bold
" #ifdef #endif dark bluwe
hi PreCondit		guibg=WHITE		guifg=#0057ae	gui=bold
hi Delimiter		guibg=WHITE		guifg=#000000	gui=NONE
" const static
hi StorageClass  	guibg=WHITE		guifg=#006e26	gui=NONE
"type
hi Typedef			guibg=#ffffff	guifg=#006e26	gui=bold
" int char
hi Type		        guibg=WHITE		guifg=#006e26		gui=NONE
hi Tag				guibg=WHITE		guifg=#3facff	gui=underline
hi Special	        guibg=WHITE		guifg=BLACK		gui=NONE
hi SpecialKey       guibg=WHITE		guifg=BLACK		gui=NONE
hi TODO				guibg=tomato	guifg=WHITE		gui=underline
hi Conditional		guibg=#FFF796 	guifg=#000000	gui=NONE
"NonText		'~' and '@' at the end of the window, characters from
		"'showbreak' and other characters that do not really exist in
		"the text (e.g., ">" displayed when a double-wide character
		"doesn't fit at the end of the line).

" Php
hi   phpType         guifg=#B07E00     guibg=NONE      gui=NONE
hi   phpSpecial      guifg=#B07E00     guibg=NONE      gui=NONE
hi   phpInclude      guifg=#006e26     guibg=NONE      gui=NONE
hi   phpStatement    guifg=#B07E00     guibg=NONE   gui=NONE
hi   phpIdentifier   guifg=#555555     guibg=NONE      gui=NONE
hi   phpVarSelector  guifg=#555555     guibg=NONE      gui=NONE
hi   phpOperator     guifg=#0057ae     guibg=NONE      gui=NONE
"hi   phpStringSingle guifg=#339933     guibg=NONE      gui=NONE
"hi   phpStringSingle guifg=#006e26     guibg=NONE      gui=italic
hi   phpStringSingle guifg=#83a380     guibg=NONE      gui=italic
hi   phpFunctions    guifg=#B07E00        guibg=NONE      gui=NONE

" Html
hi   htmlTag               guifg=#0057ae   guibg=NONE   gui=NONE
hi   htmlEndTag            guifg=#0057ae   guibg=NONE   gui=NONE
hi   htmlTagName           guifg=#0057ae   guibg=NONE   gui=NONE
hi   htmlArg               guifg=#0057ae   guibg=NONE   gui=NONE
hi   htmlSpecialChar       guifg=#B07E00   guibg=NONE   gui=NONE

" Javascript
hi   javaScriptFunction    guifg=#B07E00   guibg=NONE   gui=NONE
hi   javaScriptBraces      guifg=NONE      guibg=NONE   gui=NONE
hi   javaScriptType        guifg=#0057ae   guibg=NONE   gui=NONE
hi   javaScriptStatement   guifg=#0057ae   guibg=NONE   gui=NONE

" NerdTree
hi NERDTreeDir             guifg=NONE      guibg=NONE   gui=NONE
hi NERDTreeExecFile        guibg=WHITE     guifg=#006e26	gui=NONE
hi NERDTreeCurrentNode     guibg=#cceeff     guifg=#000000	gui=NONE

hi NonText          guibg=WHITE		guifg=BLACK		gui=NONE
hi Keyword 	        guibg=WHITE		guifg=#ff0000	gui=NONE
hi link SpecialComment 	Special
hi link Debug		Special

