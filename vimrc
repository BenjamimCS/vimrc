call plug#begin()

" == Essentials == "
" Vim Startfy
Plug 'mhinz/vim-startify'

" NERDTree
Plug 'preservim/nerdtree'
" NERDTree Git
Plug 'Xuyuanp/nerdtree-git-plugin'

" COC NVIM
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Ale
Plug 'dense-analysis/ale'
" CTRLP.vim
Plug 'ctrlpvim/ctrlp.vim'
" Visual Multi
Plug 'mg979/vim-visual-multi' 
" Comment Lines
Plug 'tpope/vim-commentary'
" Vim AutoSave
Plug '907th/vim-auto-save'
" vim-autoread - Refresh every save out of Vim
Plug 'djoshea/vim-autoread'
" Vim Polyglot
Plug 'sheerun/vim-polyglot'
" Auto Pairs
Plug 'jiangmiao/auto-pairs'
" IndentLine
Plug 'Yggdroot/indentLine'
" == Local Indent
Plug 'tweekmonster/local-indent.vim' 
" tagbar
Plug 'preservim/tagbar'
" Lorem Generator
Plug 'w3bdev1/lorem.vim'
" Emmet Plugin
Plug 'mattn/emmet-vim'
" Vim CSS Color - for a colorized hex, rgb codes
Plug 'ap/vim-css-color'

" == Theme == "
" Monokai
Plug 'phanviet/vim-monokai-pro'
" Synthwave84
Plug 'artanikin/vim-synthwave84'
" Candle-grey
Plug 'aditya-azad/candle-grey'
" Awesome Colorschemes - pack of themes
Plug 'rafi/awesome-vim-colorschemes'

" Vim Devicons
Plug 'ryanoasis/vim-devicons'
" Transparent BG
Plug 'tribela/vim-transparent'

" VIM Airline
Plug 'vim-airline/vim-airline'
" VIM Airline Themes
Plug 'vim-airline/vim-airline-themes'
" Fugitive.vim
Plug 'tpope/vim-fugitive'

call plug#end()

" set t_Co=256 " enable colors in terminal
set autoread

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
set mouse=a
set nowrap
set title
set cursorline
set termguicolors
set number
set relativenumber
set hidden
set autoread
filetype plugin on

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" === MAP Keys === "
let mapleader = ","

" Goto vimrc
noremap <leader>sv :source $MYVIMRC<CR>
noremap <leader>ev :vsplit $MYVIMRC<CR>

" noremap <TAB>
" == tagbar == "
nmap <F8> :TagbarToggle<CR>

" == Vi flow == "
" = ^q for quit "
nnoremap <leader><c-q> :q<CR>
" = ^s for save "
nnoremap <c-s> :w<CR>
inoremap <c-s> <esc>:w<CR>i

" Press <leader> and ; for enter command mode
nnoremap <leader>; :

" == Wrap == "
nnoremap <leader>w :set wrap<CR>
nnoremap <leader>nw :set nowrap<CR>

" == press CTRL + V to Uppercase the current word == "
nnoremap <c-u> v e U w
inoremap <c-u> <esc>v e U w<esc>i

" == Navigate between buffers == "
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>

nnoremap <c-j> <c-w><Down>
nnoremap <c-h> <c-w><Left>
nnoremap <c-k> <c-w><Up>
nnoremap <c-l> <c-w><Right>

" == For NERDTree == "
nnoremap <c-e> :NERDTreeToggle<CR>
inoremap <c-e> <esc>:NERDTreeToggle<CR>

" == Transparent == "
inoremap <leader>tt <esc>:TransparentToggle<CR>i
nnoremap <leader>tt :TransparentToggle<CR>
"echom "Wellcome >^.^<"

" === Abbreviations === "
iabbrev mygh https://github.com/BenjamimCS
iabbrev wdith width

" === Themes === "
" == VIm Colorschme == "
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1 
colorscheme sonokai

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
let g:airline#extensions#tabline#enabled=1
" let g:airline_powerline_fonts=1
let g:airline_statusline_ontop=0
" let g:airline_theme='monokai_pro'
let g:airline#extensions#tabline#formatter='unique_tail'

let g:airline_symbols = {}

let g:airline_left_sep                         = "\ue0b8"
let g:airline_left_alt_sep                     = "\ue0b9"
let g:airline_right_sep                        = "\ue0ba "
let g:airline_right_alt_sep                    = "\ue0bb "
let g:airline#extensions#tabline#left_sep      = " "
let g:airline#extensions#tabline#left_alt_sep  = "|"
let g:airline#extensions#tabline#right_sep     = " "
let g:airline#extensions#tabline#right_alt_sep = "|"
let g:airline_symbols.branch                   = ' '
let g:airline_symbols.colnr                    = ' :'
let g:airline_symbols.readonly                 = ''
let g:airline_symbols.linenr                   = ' :'
let g:airline_symbols.maxlinenr                = '☰ '
let g:airline_symbols.dirty                    ='⚡'

" vim-devicons
" setting a font to use
" set guifont=<FONT_NAME> <FONT_SIZE>

" === NERTree plugin === "
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal

" == ON START === "

" Start NERDTree and put the cursor back in the other window.
"
" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
"
" Start NERDTree when Vim is started without file arguments.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" == Exiting == "
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
						\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" === Vim CTRLP === "
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore='v[/] .(swp|zip)'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden=1

" === Vim Ale === "
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_completion_enabled=0

" === Vim AutoSave === "
let g:auto_save = 1  " enable AutoSave on Vim startup

" === Coc.nvim === "
let g:coc_global_extensions=['coc-git', 'coc-json', 'coc-html', 'coc-css', 'coc-phpls', 'coc-tsserver', 'coc-sh', 'coc-pyright', ]
