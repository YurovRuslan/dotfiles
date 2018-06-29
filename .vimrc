" turn on syntax highlighting
syntax enable

" set history length
set history=1000

" set <leader>
let mapleader=";"

" to reload ~/.vimrc
map <leader>rr :source ~/.vimrc<CR>

" number of visual spaces per TAB
set tabstop=4

" tabs are spaces
set expandtab

" highlight current line
set cursorline

" vim autocomplete for commands
set wildmenu

" highlight matching [{()}]
set showmatch

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" indent
set autoindent
set shiftwidth=4

"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" ignore case sensitiviness
set ignorecase

" show row and column ruler information
set ruler

" Fast saving
nmap <leader>w :w!<cr>

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set mouse=v

" mapping
map <leader>a :badd<cr>
map <leader>n :bn<cr>
map <F7> :bn<cr>
map <leader>p :bp<cr>
map <F8> :bp<cr>
map <leader>d :bd<cr> 

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'
