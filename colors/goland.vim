" colors/goland.vim
set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="goland"

lua require('goland').setup()
