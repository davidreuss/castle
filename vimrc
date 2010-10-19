filetype off

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set nocompatible " Behave more like VIM

syntax on

filetype on
filetype plugin on
filetype indent on

set number
set ruler
set nostartofline
set nowrap " Word wrapping die

set lazyredraw

set history=1000 " History rocks
set autoread

let mapleader=","
let g:mapleader=","

" Persistent undo
set undofile
set undodir=/tmp

" Let supertab decide the best autocomplete function but default to omni
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

set cmdheight=2 " Two lines for commands please
set showcmd " Display incomple commands
set showmode " Nice to know the current editing mode
set noerrorbells
set visualbell
set laststatus=2
set nofoldenable
set nowrap

set statusline=%-(%F%m%r%h%w%)\ %{&ff}/%Y/%{&encoding}\ %{fugitive#statusline()}\ %=%(@\%03.3b\ %Ll\ %l,%v\ (%p%%)%)

set backup " Done create .swp files everywhere
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/temp

" Hidden chars
set list
set listchars=tab:>-,trail:-

" Commands autocomplete
set wildmenu
set wildmode=list:longest,full

" Use spaces instead of tabs for indention
set tabstop=4
set shiftwidth=4
set expandtab
set showtabline=2
set softtabstop=4
set colorcolumn=100

" Various textformatting
set scrolloff=5
set hlsearch
set backspace=2
set noshowmatch
set ignorecase
set smartcase
set autoindent
set smartindent
set cindent
set smarttab
set textwidth=0
set nomodeline
