" Pathogen
call pathogen#infect()
"
" No VI
set nocompatible
filetype off

let g:syntastic_disabled_filestypes = ['html']

" Enable filetype plugins
filetype plugin on
filetype indent on

" Solarized
let g:solarized_visibility="high"
let g:solarized_contrast="high"

syntax on
" set background=light
colorscheme eddie


" Change the leader from \ to ,
let mapleader = ","
let g:mapleader = ","

" Backspace is allowed everywhere
set backspace=indent,eol,start

" Default charset for buffers are UTF-8
set enc=utf-8

" Syntastic
let g:syntastic_auto_loc_list=1

" Because Syntax highlighting is slow on REALLY long lines, like thoose in
" some of our projects. Disable it after 200 chars.
set synmaxcol=200 

" Search
set incsearch
set hlsearch
set ignorecase

" History Swap and backup
set history=50
set nobackup
set noswapfile
set undofile
set undodir=/tmp/vim-undofile

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
