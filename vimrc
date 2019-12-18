" 
" __     ___                    
" \ \   / (_)_ __ ___  _ __ ___ 
"  \ \ / /| | '_ ` _ \| '__/ __|
"   \ V / | | | | | | | | | (__ 
"    \_/  |_|_| |_| |_|_|  \___|
"                               
"
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set encoding=utf-8


" ===
" === Main code display
" ===
set number
set relativenumber
" set ruler
syntax enable
syntax on
set cursorline

" ===
" === Editor behavior
" ===
" Better tab
set tabstop=4
set shiftwidth=2
set scrolloff=5

" ===
" === Status/command bar
" ===
set laststatus=2
" set autochdir
set showcmd
"

" ===
" === search options
" ===
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" ===
" === Restore Cursor Position
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" ===
" === Basic Mappings
" ===

let mapleader=" "
map Q :q<CR>
map S :w<CR>
" Open the vmrc file anytime
map <LEADER>rc :e ~/.vim/vimrc<CR>

"Copy to system clipboard
vnoremap Y :w !xclip -i -sel c<CR>

"search
map <LEADER><CR> :nohlsearch<CR>


" ===
" === Cursor Movement
" ===

" J/K keys for 5times j/k (faster navigation)
noremap J 5j
noremap K 5k

" Faster in-line navigation
noremap W 5w
noremap B 5b

" ===
" === Window management
" ===
" Use <space> + arrow keys for moving the cursor around windows
map <LEADER>w <C-w>w
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" Disabling the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical),
" right (vertical)
map su :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sd :set splitbelow<CR>:split<CR>
map sr :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>

" Resize splits with arrow keys
map <LEADER><Up> :res +5<CR>
map <LEADER><Down> :res -5<CR>
map <LEADER><Left> :vertical resize-5<CR>
map <LEADER><Right> :vertical resize+5<CR>


colorscheme darkblue
