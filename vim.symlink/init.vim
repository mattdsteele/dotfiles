set nocompatible              " be iMproved, required

" vim-plug setup
call plug#begin('~/.vim/plugged')

" My plugins, let me show you them
Plug 'kien/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'edsono/vim-matchit'
Plug 'tpope/vim-surround'
Plug 'rking/ag.vim'
Plug 'sjl/badwolf'

Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'leafgarland/typescript-vim'

" Done with vim-lug
call plug#end()

filetype plugin indent on

" Sane defaults
syntax enable
set ai
set history=100
set ruler 
set number
set autoindent
set smartindent
filetype indent on
filetype plugin on
:let mapleader = ","
set ls=2

" visualizations
colorscheme badwolf
set background=dark
set cursorline "highlight current line
set showmatch "highlight matching braces

" movement
" move by visual line
nnoremap j gj
nnoremap k gk

"" whitespace
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2

"" search options
set nohlsearch
set incsearch "incremental search
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

" Autocomplete
set omnifunc=syntaxcomplete#Complete

" Actual customizations now
nnoremap <leader><leader> <c-^>
nnoremap <leader>t :CtrlP <cr>
nnoremap <leader>f :Ag 

" ctrlp
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" Window movement shortcuts
 " move to the window in the direction shown, or create a new window
 function! WinMove(key)
   let t:curwin = winnr()
   exec "wincmd ".a:key
   if (t:curwin == winnr())
     if (match(a:key,'[jk]'))
       wincmd v
     else
       wincmd s
     endif
     exec "wincmd ".a:key
   endif
 endfunction

 map <silent> <C-h> :call WinMove('h')<cr>
 map <silent> <C-j> :call WinMove('j')<cr>
 map <silent> <C-k> :call WinMove('k')<cr>
 map <silent> <C-l> :call WinMove('l')<cr>
