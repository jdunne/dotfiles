"Disable compatibility with vi
set nocompatible

" Enable file type detection
filetype plugin on
filetype indent on 

"Load pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" ---------------------------------------------------------
" Search Options 
"  --------------------------------------------------------
set showmatch
set incsearch
set ignorecase
set smartcase
set hlsearch

" ---------------------------------------------------------
"  Tabs
"  --------------------------------------------------------
set autoindent
set smartindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" ---------------------------------------------------------
" Colors
"  --------------------------------------------------------
syntax enable
set background=dark

if has("unix")
    colorscheme solarized
    set t_Co=256 " 256 colors
endif    

" ---------------------------------------------------------
" Misc
"  --------------------------------------------------------

" Set the map leader to a key that is easier to hit.
let mapleader=","

" Turn on line numbers
set number

"Display ruler at bottom of text editor
set ruler

"Display some useful information in the status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 

"Disable toolbar
set guioptions-=T

" Always display the status line
set laststatus=2

" Display the ruler at the bottom of the screen
set ruler

" Enable mouse
set selectmode=mouse
set mouse=a

" Better handling of pasted text.
set paste

" Backspace key should delete line endings
set backspace=indent,eol,start

"Disable wrapping of long text files.
set nowrap

" Disable creation of backup files.
set nobackup

" ---------------------------------------------------------
" SnipMate settngs 
"  --------------------------------------------------------
let g:snips_author = 'John Dunne'

" ---------------------------------------------------------
" Ack settings
" ---------------------------------------------------------
map <Leader>a :Ack 

" ---------------------------------------------------------
" Protocol Buffer highlighting 
" ---------------------------------------------------------
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
    au! BufRead,BufNewFile *.go setfiletype go
augroup end


" ---------------------------------------------------------
" Buffer Management
" ---------------------------------------------------------
:nnoremap <C-n> :bnext<CR>              
:nnoremap <C-p> :bprevious<CR>

" ---------------------------------------------------------
" Markdown
" ---------------------------------------------------------
:command MarkdownPreview !markdown.pl % > /tmp/markdown-preview.html && open /tmp/markdown-preview.html 
map <Leader>mp :MarkdownPreview<CR>

" ---------------------------------------------------------
" vim-powerline 
" ---------------------------------------------------------
let g:Powerline_symbols = 'compatible'
