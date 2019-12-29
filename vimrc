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
set ruler
syntax enable
syntax on
set cursorline

" ===
" === Editor behavior
" ===
" Better tab
set expandtab
set tabstop=4
set shiftwidth=2
" set list
" set listchars=tab:\ trainl:\
set scrolloff=5
set softtabstop=4

" ===
" === Status/command bar
" ===
set laststatus=2
" set autochdir
set showcmd

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu
set wildmode=longest,list,full

" ===
" === search options
" ===
set hlsearch
exec "nohlsearch"
" instant search
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

let mapleader=";"
map Q :q<CR>
map S :w<CR>
map <C-a> :<Esc>gg<C-v>G$
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

" focus environment
" disable cursor blinl
set gcr=a:block-blinkon0
" disable scroll bar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" disable menu and tool bar
set guioptions-=m
set guioptions-=T

" Use <space> + arrow keys for moving the cursor around windows
map <LEADER>w <C-w>w
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <LEADER>r <C-w>r

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

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screns side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>t<C-w>H

" ===
" === Tab management
" ===
" Create a new tab with tu
map tu : tabe<CR>
" Move around tabs with tn and ti
map tn :tabnext<CR>
map tp :tabprevious<CR>
" Move the tabs with tmn and tmi
map tmn :+tabmove<CR>
map tmp :-tabmove<CR>

" ===
" === Other useful stuff
" ===
" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/after/
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
"Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/DrawIt'
Plugin 'SirVer/ultisnips'
Plugin 'keelii/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'lilydjwg/fcitx.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'terryma/vim-expand-region'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dense-analysis/ale'
" 插件列表结束
call vundle#end()

call plug#begin('~/.vim/plugged')
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

" 配色方案
set background=dark
"colorscheme phd
"colorscheme evening
"colorscheme pablo
"colorscheme ron
"colorscheme delek
"colorscheme desert
"colorscheme solarized
colorscheme molokai
"colorscheme evening
" colorscheme evening
"colorscheme evening
"colorscheme evening
"colorscheme evening
"colorscheme evening
"colorscheme evening
"colorscheme evening


" ===
" === NERDTree
" ===
" fl open filelist"
nmap <LEADER>fl :NERDTreeToggle<CR>
" set window size
let NERDTreeWinSize=32
" set window position
let NERDTreeWinPos="right"
" minal NERDUI
let NERDTreeMinimalUI=1
" show line number
let NERDTreeShowLineNumbers = 1


" reset ultiSnips hotkey to avoid contradict with YCM
let g:UltiSnipsExpandTrigger="<C-j>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let OmniCpp_defaultNamespaces=["_GLIBCXX_STD"]
set tags+=/usr/include/c++/5/stdcpp.tags


" ===
" === ctags
" ===
" set tags=tags,./tags
set tags+=/home/ytqiang/anaconda3/envs/Detectron2/lib/python3.6/site-packages/tags
set tags+=.tags,./tags

" set vim config right now
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" ===
" === Tagbar
" ===
nmap <F8> :TagbarToggle<CR>

" ===
" === Instand-markdown
" ===
let g:instant_markdown_browser = "firefox --new-window"
let g:instant_markdown_port = 8888
let g:instant_markdown_autostart = 0

" ===
" === nerdcommenter
" ===
let g:NERDCommenterComment="<C-e>"

" ===
" === ale
" ===
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
set backspace=indent,eol,start

" ===
" === Markdown-Preview
" ===
nmap <silent> <Leader>m <Plug>MarkdownPreview
