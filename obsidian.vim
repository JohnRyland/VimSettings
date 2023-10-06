
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="obsidian"


" Setup some test pattern
let i=1
while i != 16
  exec 'syn keyword ColorTest'.i.' ColorTest'.i
  exec 'hi ColorTest'.i.' ctermfg='.i
  exec 'syn keyword ColorTest'.i.'Bold ColorTest'.i.'Bold'
  exec 'hi ColorTest'.i.'Bold ctermfg='.i.' cterm=bold'
  let i = i+1
endwhile


hi cppOtherKeyword ctermfg=3
hi cppStorageClass ctermfg=3
hi SpellBad        ctermfg=1 ctermbg=NONE cterm=underline
hi cIncluded       ctermfg=9
hi cDefine         ctermfg=6
hi cDefined        ctermfg=6
hi LineNr          ctermfg=1
hi PreProc         ctermfg=6
hi Comment         ctermfg=1

hi Constant	       term=underline cterm=NONE ctermfg=DarkRed ctermbg=NONE gui=NONE guifg=Magenta guibg=NONE
hi Special	       term=bold cterm=NONE ctermfg=DarkMagenta ctermbg=NONE gui=NONE guifg=SlateBlue guibg=NONE
hi Identifier	     term=underline cterm=NONE ctermfg=DarkCyan ctermbg=NONE gui=NONE guifg=DarkCyan guibg=NONE
hi Statement	     term=bold cterm=NONE ctermfg=Brown ctermbg=NONE gui=bold guifg=Brown guibg=NONE
hi Type		         term=underline cterm=NONE ctermfg=DarkGreen ctermbg=NONE gui=bold guifg=SeaGreen guibg=NONE
hi Underlined	     term=underline cterm=underline ctermfg=DarkMagenta gui=underline guifg=SlateBlue
hi Ignore	         term=NONE cterm=NONE ctermfg=white ctermbg=NONE gui=NONE guifg=bg guibg=NONE
hi Error		       term=reverse cterm=NONE ctermfg=White ctermbg=Red gui=NONE guifg=White guibg=Red
hi Todo		         term=standout cterm=NONE ctermfg=Black ctermbg=Yellow gui=NONE guifg=Blue guibg=Yellow

" hi Exception
" hi Operator
" hi StorageClass
" hi Structure
" hi Boolean
" hi Constant
" hi Delimiter
" hi String
" hi Number

