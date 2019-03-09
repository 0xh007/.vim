call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'mileszs/ack.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()

"format:
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab "spaces > tabs

"indent
filetype plugin indent on

"ui:
colorscheme gruvbox
set background=dark
syntax enable
set number "shows line numbers
set cursorline "highlights row that cursor is on
filetype indent on
set showmatch "shows matching parens
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set guioptions -=m "remove menubar
set guioptions -=T "remove toolbar

"search:
set incsearch "realtime searching
set ignorecase "ignore caps
set smartcase "case sensitive if capital letter in query

"lightline
let g:lightline= {
    \ 'colorscheme': 'wombat',
    \ }

"nerdtree
let NERDTreeShowBookmarks=1
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"ack
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

let g:ale_linters = {
   \ 'typescript': ['tsserver', 'typecheck', 'tslint']
    \ }
let g:ale_linters_ignore = {
   \ 'typescript': ['eslint']
   \ }
let g:ale_sign_column_always=1
