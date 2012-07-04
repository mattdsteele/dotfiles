syntax enable
set ai
set history=100
set ruler 
set number
set nocompatible
set autoindent
set smartindent
filetype indent on
filetype plugin on
:let mapleader = ","
set ls=2

"" whitespace
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2

"" search options
set nohlsearch
set incsearch
set ignorecase
set smartcase

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
