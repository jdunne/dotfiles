set nocompatible

filetype plugin on

let g:snips_author = 'John Dunne'

set autoindent
set smartindent

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on 

set number

set guioptions-=T
set ruler

set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

set nobackup    " get rid of annoying ~file

nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

let NERDTreeIgnore=['\.pyc$']

"Enable auto completion
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" Colors
syntax enable
set t_Co=256 " 256 colors
set background=dark
colorscheme solarized


