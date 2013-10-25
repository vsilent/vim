" Vim syntax file
" Language: W3AF script
" Maintainer: Dominique RIGHETTO <dominique.righetto@gmail.com>
" Latest Revision: 27 April 2013
" Version: 1.0.0

" Checks whether an earlier file has defined a syntax already
if exists("b:current_syntax")
  finish
endif

" Do not ignore case
syn case match

" Keywords
syn keyword w3afElementKeywordGrp1 view list config desc set use add
syn keyword w3afElementKeywordGrp2 output infrastructure mangle audit bruteforce crawl auth grep evasion interact fastexploit plugins exploit profiles keys target back exist assert kb exit
syn match w3afElementKeywordGrp2 "misc-settings.*$"
syn match w3afElementKeywordGrp2 "http-settings.*$"
syn keyword w3afElementKeywordGrp3 cleanup start version help

" Comment
syn match w3afElementComment "#.*$"

" Define highlighting
hi def link w3afElementComment	Comment
hi def link w3afElementKeywordGrp1	Function
hi def link w3afElementKeywordGrp2	Statement
hi def link w3afElementKeywordGrp3      String
let b:current_syntax = "w3af"
