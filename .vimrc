" Pathogen setup
call pathogen#infect()

" Sane defaults
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

colorscheme desert
set background=dark

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

" Resize windows to give the active one the most focus. Inspired by grb
" dotfiles
set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999

" Actual customizations now
nnoremap <leader><leader> <c-^>
nnoremap <leader>t :CtrlP <cr>

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.exe$\|\.so$\|\.dll$',
  \ }
