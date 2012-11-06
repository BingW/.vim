" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2006 Dec 10

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "koehler"
highlight Normal guifg=white guibg=black ctermfg=231 ctermbg=16
highlight Scrollbar guifg=darkcyan guibg=cyan ctermfg=30 ctermbg=51
highlight Menu guifg=black guibg=cyan ctermfg=16 ctermbg=51
highlight SpecialKey term=bold guifg=#cc0000 ctermfg=160 cterm=bold
highlight NonText term=bold guifg=#cc0000 gui=bold ctermfg=160 cterm=bold
highlight Directory term=bold guifg=#cc8000 ctermfg=172 cterm=bold
highlight ErrorMsg term=standout guifg=white guibg=red ctermfg=231 ctermbg=196 cterm=bold
highlight Search term=reverse guifg=white guibg=red ctermfg=231 ctermbg=196
highlight MoreMsg term=bold guifg=seagreen gui=bold ctermfg=29 cterm=bold
highlight ModeMsg term=bold guifg=white guibg=blue gui=bold ctermfg=231 ctermbg=21 cterm=bold
highlight LineNr term=underline guifg=yellow ctermfg=226 cterm=bold
highlight Question term=standout guifg=green gui=bold ctermfg=46 cterm=bold
highlight StatusLine term=bold,reverse guifg=blue guibg=white gui=bold ctermfg=21 ctermbg=231 cterm=bold
highlight StatusLineNC term=reverse guifg=white guibg=blue ctermfg=231 ctermbg=21
highlight Title term=bold guifg=magenta gui=bold ctermfg=201 cterm=bold
highlight Visual term=reverse gui=reverse cterm=reverse
highlight WarningMsg term=standout guifg=red ctermfg=196 cterm=bold
highlight Cursor guifg=bg guibg=green ctermbg=46
highlight Comment term=bold guifg=#80a0ff ctermfg=111 cterm=bold
highlight Constant term=underline guifg=#ffa0a0 ctermfg=217 cterm=bold
highlight Special term=bold guifg=orange ctermfg=214 cterm=bold
highlight Identifier term=underline guifg=#40ffff ctermfg=51
highlight Statement term=bold guifg=#ffff60 gui=bold ctermfg=227 cterm=bold
highlight PreProc term=underline guifg=#ff80ff ctermfg=213
highlight Type term=underline guifg=#60ff60 gui=bold ctermfg=83 cterm=bold
highlight Error term=reverse guifg=red guibg=black ctermfg=196 ctermbg=16
highlight Todo term=standout guifg=blue guibg=yellow ctermfg=21 ctermbg=226
highlight CursorLine term=underline guibg=#555555 ctermbg=240 cterm=NONE
highlight CursorColumn term=underline guibg=#555555 ctermbg=240 cterm=underline
highlight MatchParen term=reverse guibg=blue ctermbg=21
highlight TabLine term=bold,reverse guifg=blue guibg=white gui=bold ctermfg=21 ctermbg=231 cterm=bold
highlight TabLineFill term=bold,reverse guifg=blue guibg=white gui=bold ctermfg=21 ctermbg=231 cterm=bold
highlight TabLineSel term=reverse guifg=white guibg=blue ctermfg=231 ctermbg=21
hi link IncSearch		Visual
hi link String			Constant
hi link Character		Constant
hi link Number			Constant
hi link Boolean			Constant
hi link Float			Number
hi link Function		Identifier
hi link Conditional		Statement
hi link Repeat			Statement
hi link Label			Statement
hi link Operator		Statement
hi link Keyword			Statement
hi link Exception		Statement
hi link Include			PreProc
hi link Define			PreProc
hi link Macro			PreProc
hi link PreCondit		PreProc
hi link StorageClass	Type
hi link Structure		Type
hi link Typedef			Type
hi link Tag				Special
hi link SpecialChar		Special
hi link Delimiter		Special
hi link SpecialComment	Special
hi link Debug			Special
