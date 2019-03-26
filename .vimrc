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

" set filename
set laststatus=2

" textwidth
set tw=80
set fo+=t

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

" set relative numbers
set number relativenumber

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
map <leader>git :Magit<cr>

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

nmap <leader>pi :PlugInstall<cr>

" Directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'Shougo/unite.vim'
Plug 'jreybert/vimagit'
Plug 'scrooloose/nerdtree'
" Plug 'scrooloose/syntastic'
" Plug 'valloric/youcompleteme'
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'w0rp/ale'
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
Plug 'itchyny/calendar.vim'

call plug#end()

nmap <leader>nt :NERDTree<cr>
nmap <leader>cp :CtrlP<cr>

