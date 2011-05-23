set nocompatible

filetype plugin on
filetype indent on 

set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set nowrap
set number
set guioptions-=T
set ruler
syntax enable

set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

set nobackup    

let NERDTreeIgnore=['\.pyc$']

let g:snips_author = 'John Dunne'

set t_Co=256 " 256 colors
if has('gui_running')
    set background=light
    colorscheme solarized
endif

"Load pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
