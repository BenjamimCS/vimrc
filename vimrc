call plug#begin()

" == Essentials == "
" Vim Startfy
Plug 'mhinz/vim-startify'

" COC NVIM
" Ale
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'npm ci'}
" CTRLP.vim
Plug 'ctrlpvim/ctrlp.vim'
" Visual Multi
Plug 'mg979/vim-visual-multi' 
" Vim Move
Plug 'matze/vim-move'
" Comment Lines
Plug 'tpope/vim-commentary'
" Vim AutoSave
Plug '907th/vim-auto-save'
" vim-autoread - Refresh every save out of Vim
Plug 'djoshea/vim-autoread'
" Vim Polyglot
Plug 'sheerun/vim-polyglot'
" Liquid enchancements for Vi
Plug 'tpope/vim-liquid'
" Auto Pairs
Plug 'jiangmiao/auto-pairs'
" IndentLine
Plug 'Yggdroot/indentLine'
" == Local Indent
Plug 'tweekmonster/local-indent.vim' 
" tagbar
Plug 'preservim/tagbar'
" Lorem Generator
Plug 'ldong/vim_loremipsum'
" Emmet Plugin
Plug 'mattn/emmet-vim'

" == Theme == "
" Monokai
Plug 'phanviet/vim-monokai-pro'
" Synthwave84
Plug 'artanikin/vim-synthwave84'
" Candle-grey
Plug 'aditya-azad/candle-grey'
" Awesome Colorschemes - pack of themes
Plug 'rafi/awesome-vim-colorschemes'
" Vim Deus
Plug 'ajmwagar/vim-deus'
" Transparent BG
Plug 'tribela/vim-transparent'

" VIM Airline
Plug 'vim-airline/vim-airline'
" VIM Airline Themes
Plug 'vim-airline/vim-airline-themes'
" Wintabs
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
" Fugitive.vim
Plug 'tpope/vim-fugitive'
" Markdown Preview "
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" == Dependencies ==
" vim-devicons
Plug 'ryanoasis/vim-devicons'

call plug#end()

set autoread
set fillchars=vert:\│

syntax enable
set encoding=utf-8
set signcolumn=yes
set signcolumn=yes
set background=dark
set updatetime=100
set shiftwidth=2
set scrolloff=8
set cmdheight=2
set tabstop=2
set expandtab
set mouse=a
set nowrap
set title
set cursorline
set termguicolors
set number
set relativenumber
set hidden
set hlsearch
set incsearch
set autoread
filetype plugin on

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" === MAP Keys === "
let mapleader = " "

" Source vimrc
noremap <leader>sv :source $MYVIMRC<CR>

" == tagbar == "
nmap <F8> :TagbarToggle<CR>

" == Vi flow == "
" = <leader> + q for quit = "
nnoremap <leader>q :q<CR>

" = <leader> + s for save = "
nnoremap <leader>s      :w<CR>
inoremap <C-s>     <esc>:w<CR>i

" = <leader> + ; for enter command mode = "
nnoremap <leader>; :

" == Wrap/Unwrap == "
nnoremap <leader>w :set wrap!<CR>

" == press , + CTRL + U to Uppercase the current word == "
nnoremap <c-u> v e U w
inoremap <c-u> <esc>v e U w<esc>i

" == Resize windows == "
nnoremap <C-Up>   :resize -1<CR>
nnoremap <C-Down> :resize +1<CR>
nnoremap <C-Left> :vertical resize -1<CR>
nnoremap <C-Right> :vertical resize +1<CR>

" == Navigate between buffers == "
nnoremap <leader>l :WintabsNext<CR>
nnoremap <leader>h :WintabsPrevious<CR>
nnoremap <leader>d :WintabsClose<CR>

" == Navigate between windows == "
nnoremap <c-j> <c-w><Down>
nnoremap <c-h> <c-w><Left>
nnoremap <c-k> <c-w><Up>
nnoremap <c-l> <c-w><Right>

" == Transparent == "
nnoremap <leader>tt :TransparentToggle<CR>

" === Autocmds === "
" enable indentation for allowed types
augroup enbale_indent
  autocmd!
  autocmd FileType * if &l:filetype    !=? 'startify'
                     \  && &l:filetype !=? 'coc-explorer'
                     \| IndentLinesEnable
                     \| endif
augroup END

" == Yaml ==
augroup yaml_tabs
  autocmd!
  autocmd BufNewFile,BufRead,FileType,VimEnter,BufEnter
  \ *.yml,*.yaml setlocal tabstop=3 | setlocal shiftwidth=3
  \| setlocal cursorcolumn
augroup END

" == Python == "
augroup python_tabs
  autocmd!
  autocmd BufNewFile,BufRead,FileType,VimEnter,BufEnter
  \ *.py setlocal tabstop=2 | setlocal shiftwidth=2
augroup END

" === Abbreviations === "
iabbrev mygh https://github.com/BenjamimCS
iabbrev wdith width

" === Themes === "
" == VIm Colorschme == "
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1 
colorscheme gruvbox

" === PLUGINS === "
" == Emmet == "
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings = {
\  'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

" hi Normal guibg=NONE ctermbg=NONE

" === Airline === "
let g:airline#extensions#tabline#enabled       = 1
let g:airline_powerline_fonts                  = 1
let g:airline_statusline_ontop                 = 0
let g:airline_inactive_alt_sep                 = 1
let g:airline_theme                            = 'sonokai'
let g:airline#extensions#tabline#formatter     = 'unique_tail'

let g:airline_symbols                          = {}

let g:airline_left_sep                         = ''
let g:airline_left_alt_sep                     = ''
let g:airline_right_sep                        = ''
let g:airline_right_alt_sep                    = ''
" let g:airline#extensions#tabline#left_sep      = " "
" let g:airline#extensions#tabline#left_alt_sep  = "|"
" let g:airline#extensions#tabline#right_sep     = " "
" let g:airline#extensions#tabline#right_alt_sep = "|"
" let g:airline_symbols.branch                   = ' '
" let g:airline_symbols.colnr                    = ' :'
" let g:airline_symbols.readonly                 = ''
" let g:airline_symbols.linenr                   = ' :'
" let g:airline_symbols.maxlinenr                = '☰ '
" let g:airline_symbols.dirty                    ='⚡'

" === Coc Explorer === "
let g:coc_explorer_global_presets = {
\   'vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }

" Open Coc Explorer
nnoremap <leader>o  <Cmd>CocCommand explorer<CR>
" Explore Coc's folder
nnoremap <leader>ec <Cmd>CocCommand explorer --preset cocConfig<CR>
" Explore buffers
nnoremap <leader>eb <Cmd>CocCommand explorer --preset buffer<CR>
" Explore vim's files
nnoremap <leader>ev <Cmd>CocCommand explorer --preset vim<CR>

" === Vim CTRLP === "
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore = 'v[/] .(swp|zip)'
let g:ctrlp_user_command  = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden   = 1

" === Vim Ale === "
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_completion_enabled=0

" === Vim AutoSave === "
let g:auto_save = 1  " enable AutoSave on Vim startup

" === Coc.nvim === "
let g:coc_global_extensions = [
  \'coc-explorer', 'coc-git', 'coc-json',
  \'coc-yaml', 'coc-html', 'coc-emmet',
  \'coc-css', 'coc-phpls', 'coc-tsserver',
  \'coc-sh', 'coc-pyright', '@yaegassy/coc-volar'
\]

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" == Show documentation == "
nnoremap <silent> <c-a> :call ShowDocumentation()<CR>
" == Highlight the symbol and its references when holding the cursor == "
autocmd CursorHold * silent call CocActionAsync('highlight')

" == Use TAB to confirm completion == "
inoremap <expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<TAB>"

" == Use j and k to navigate completion "
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

" == GoTo code navigation == "
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" === IndentLine === "
let g:indentLine_enabled   = 0
let g:indentLine_char_list = ['▏']

" === MarkdownPreview.nvim === "
" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" === Vim Transparent === "
let g:clear_background = 0

" === Vim Move === "
let g:move_key_modifier = 'S'
