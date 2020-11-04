set nocompatible
set encoding=utf-8

syntax on
filetype plugin indent on

" :: enable 256-colors in the terminal
if !has('gui_running') | set t_Co=256 | endif

" :: use system clipboard
set clipboard=unnamed

" :: catch-all ignores
set wig+=vendor
set wig+=log,logs
set wig+=node_modules
set wig+=build,dist

" :: no bells
set noerrorbells
set novisualbell

" :: a bit better (?) display for messages
set cmdheight=2
set ch=2

" :: make things a significantly snappier
set updatetime=300

" :: don't give |ins-completion-menu| messages
set shortmess+=c 

" :: yes to signcolumns
set signcolumn=yes

" :: read changes automatically if file is modified outside vim
set autoread

" :: because 2 spaces is what god intended for everyone
set tabstop=2 shiftwidth=2 expandtab

" :: wrap text
set wrap

" :: don't jump to the start of the line when scrolling
set nostartofline

" :: more comfortable key motion timeouts
set timeout timeoutlen=200 ttimeoutlen=10

" :: more natural split panes
set splitbelow splitright

" :: highlight the current line
set cursorline
