" No VI
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" System
Bundle "tpope/vim-git"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-markdown"
Bundle "tpope/vim-ragtag"
Bundle "msanders/snipmate.vim"
Bundle "scrooloose/syntastic"
Bundle "scrooloose/snipmate-snippets"
Bundle "godlygeek/tabular"
Bundle "othree/html5.vim"
Bundle "ervandew/supertab"
Bundle "git://github.com/2072/PHP-Indenting-for-VIm.git"
Bundle "vim-scripts/AutoClose"

" 256 colors
set t_Co=256

colorscheme Tomorrow-Night-Eighties

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Syntax highlighting
syntax on

" Change the leader from \ to ,
let mapleader = ","
let g:mapleader = ","

" Backspace is allowed everywhere
set backspace=indent,eol,start

" Default charset for buffers are UTF-8
set enc=utf-8

" Omnicompletion.
set omnifunc=syntaxcomplete#Complete

" Syntastic
let g:syntastic_auto_loc_list=1

" Search
set incsearch
set hlsearch
set ignorecase

" History Swap and backup
set history=1000
set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/temp
set undofile
set undodir=$HOME/.vim/temp

" Commandline
set cmdheight=2
set showcmd
set showmode
set laststatus=2

" Commands autocomplete
set wildmenu
set wildmode=list:longest,full

" Statusline with fugitive and encoding
set statusline=%-(%F%m%r%h%w%)\ %{&ff}/%Y/%{&encoding}\ %=%(@\%03.3b\ %Ll\ %l,%v\ (%p%%)%)

" Error bells
set noerrorbells
set visualbell

" Basic editing
set number
set ruler
set nowrap
set nofoldenable
set colorcolumn=130
set lazyredraw
set noshowmatch

" Preserve cursor position when moving up/down if posible
set nostartofline

" Display hidden chars
set list
set listchars=tab:>-,trail:-

" Indentation 
set tabstop=4
set shiftwidth=4
set expandtab
set showtabline=2
set softtabstop=4
set autoindent
set smartindent
set cindent
set smarttab

" Various textformatting
set scrolloff=5
set textwidth=0
set nomodeline
