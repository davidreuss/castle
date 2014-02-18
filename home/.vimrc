" No VI
set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/vimproc'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'godlygeek/tabular'
NeoBundle 'scrooloose/syntastic'
NeoBundle '2072/PHP-Indenting-for-VIm'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'vim-scripts/VisIncr'
NeoBundle 'henrikbjorn/php.vim'

" modelines
set modeline
set modelines=5

syntax on

" Enable filetype plugins
filetype plugin indent on

set t_Co=256
colorscheme flatland
" color github256

" Change the leader from \ to ,
let mapleader = ","
let g:mapleader = ","

" Backspace is allowed everywhere
set backspace=indent,eol,start

" Default charset for buffers are UTF-8
set enc=utf-8

" Search
set hlsearch
set ignorecase smartcase

" History Swap and backup
set history=10000
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

" Error bells
set noerrorbells

" Basic editing
set number
set ruler
set nowrap
set nofoldenable
set lazyredraw
set noshowmatch
set colorcolumn=120
set winwidth=120

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

set shell=bash

" Statusline
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)

" Easier renaming of files
map <leader>n :call RenameFile()<cr>

" Json highlight
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead Boxfile set ft=yaml

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

" Jump to last edited line if valid
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
autocmd Filetype gitcommit setlocal spell textwidth=72

" :make for smlnj
autocmd FileType sml setlocal makeprg=/usr/local/smlnj/bin/sml\ '%'

" When editing use %% to expand to current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" Run file
map <leader>m :!php %<CR>
map <leader>u :!phpunit %<CR>
map <leader>r :make<CR>

let php_sql_query=0
unlet php_sql_query

" Syntastic
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=0
let g:syntastic_mode_map = { 'mode': 'active',
                           \ 'active_filetypes': [],
                           \ 'passive_filetypes': ['html'] }

" CtrlP
let g:ctrlp_map = '<leader>t'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = '\v[\/](\.git|\.hg|\.svn|CVS)$'

" PHPSpec2
let g:phpspec_executable = 'phpspec'

" vim-airline
let g:airline_theme='simple'

" MatchIt
runtime macros/matchit.vim

" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>@
