" Autoreload
autocmd! bufwritepost .vimrc source % " Always reload when .vimrc is edited 

syntax on " ALWAYS GD
set number
set ruler
set nostartofline

set nowrap " I hate wordwrapping

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

" Additional syntaxes
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" force nerdtree to open in the right side of the screen

" Open up nerdtree when launcing vim and set the active window to the main window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Remapping f6 to nerdtree toggle
nmap <F6> :NERDTreeToggle<CR>

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
set textwidth=140

set nomodeline

set tabstop=4
set shiftwidth=4
set expandtab
set showtabline=2

