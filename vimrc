" Autoreload
autocmd! bufwritepost .vimrc source % " Always reload when .vimrc is edited 

filetype off 
call pathogen#runtime_append_all_bundles()

syntax on " ALWAYS GD

set number
set ruler
set nostartofline

set nowrap " I hate wordwrapping

set completeopt=longest

set cot+=menuone
set nocompatible " Vim Rocks
set history=100
set undolevels=250
set noconfirm
set ffs=unix,dos,mac
set magic
set iskeyword+=_,$,@,%,#,-
set viminfo+=!,h

" Allows us to have seperate configurations per language
filetype on
filetype plugin on
filetype indent on

" This will hopefully make supertab play nice with omnicomplete
let g:SuperTabDefaultCompletionType="context"

" Stuff from Mikkel
set list
set listchars=tab:>-,trail:-
set scrolloff=5 " always show me the next/previous 5 lines
set laststatus=2
set statusline=%-(%F%m%r%h%w%)\ %{&ff}/%Y/%{&encoding}\ %=%(@\%03.3b\ %Ll\ %l,%v\ (%p%%)%)

" Where to drop swp and backup files
set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/temp

" Autocompletion for commands
set wildmenu
set wildmode=list:longest,full
set ruler
set lazyredraw
set backspace=2

" Dont fuck my hears
set noerrorbells
set visualbell
set showcmd

" DONT FUCKING JUMP
set noshowmatch
set ignorecase
set smartcase
set wildmode=longest,list
set wildignore+=*.pyc,*.DS_STORE,*.db

" Show me where i am editing
" set cursorline

" Textformatting and layout
set formatoptions=tcroqn
set autoindent
set smartindent
set cindent
set smarttab
set textwidth=0
set nomodeline

set tabstop=4
set shiftwidth=4
set expandtab
set showtabline=2
set softtabstop=4
