" NeoVim Config
"
" start of vim-plug
call plug#begin('~/.config/nvim/plugged')
    Plug 'tpope/vim-fugitive'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'NLKNguyen/papercolor-theme'
call plug#end()
" end of vim-plug

" Theme Config
set t_Co=256    " This may or may not be needed
set background=dark
colorscheme PaperColor
let g:PaperColor_Theme_Options = {
\   'theme': {
\       'default.dark': {
\           'transparent_background': 1
\       }
\   },
\   'language': {
\       'python': {
\           'highlight_builtins': 1
\       },
\       'cpp': {
\           'highlight_standard_library': 1
\       },
\       'c': {
\           'highlight_builtins': 1
\       }
\   }
\}

" Airline Config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"let g:airline_theme='powerlineish'
"let g:airline_theme='papercolor'
let g:airline_theme='minimalist'

" history
set history=100

" obvious
set encoding=utf-8
filetype plugin indent on
syntax on

" set <leader>
let mapleader = "\<space>"

" fast save
nmap <leader>w :w!<cr>

" toggle NerdTree
nmap <leader>n :NERDTreeToggle<cr>

" visual prompt for command completion
set wildmenu

" display
set showmode
set showcmd
set modeline
set ruler
set number
"set title
set laststatus=2
set cmdheight=1

" indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set autoindent
set smartindent
set nowrap 

" searching
set showmatch
set hlsearch
set ignorecase
set smartcase

" enable jumping into files in a search buffer
set hidden

" timeout
set timeoutlen=200

" turn backup off
set nobackup
set nowb
set noswapfile

" highlight current line
"set cursorline

" allow backspace over everything in insert mode
set backspace=eol,start,indent

" map escape to jj
inoremap jj <esc>

" map semi-colon to colon
nnoremap ; :

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" tab navigation
nnoremap tl :tabnext<cr>
nnoremap th :tabprevious<cr>
nnoremap tn :tabnew<cr>
nnoremap to :tabclose<cr>

" split position
set splitbelow
set splitright

" split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" resize window
"nnoremap <Up> :resize +2<CR> 
"nnoremap <Down> :resize -2<CR>
"nnoremap <Left> :vertical resize -2<CR>
"nnoremap <Right> :vertical resize +2<CR>

" y and d put stuff into system clipboard
set clipboard=unnamed,unnamedplus

" enable mouse
set mouse=a

" EOF
