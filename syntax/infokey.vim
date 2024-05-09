syntax case match

setlocal iskeyword+=-
setlocal iskeyword+=^
" setlocal iskeyword+=$
" setlocal iskeyword+=#

syntax match infokeyString /^\<\([a-zA-Z0-9^]\|\$\)\+\>/
syntax keyword infokeyKeyword list-key 
syntax match infokeyComment /^#[a-zA-Z0-9]\*/

highlight link infokeyString String
highlight link infokeyComment Comment

