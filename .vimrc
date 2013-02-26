" Pathogen needs this
filetype off

call pathogen#runtime_append_all_bundles()

filetype plugin indent on

" No need to be compatible with vi
set nocompatible

" Prevents some security exploits having to do with modelines in files
set modelines=0

" Tabs:
" how many columns a tab counts for
set tabstop=4
" how many columns text is indented with the reindent operations (<< and >>)
set shiftwidth=4 
" how many columns vim uses when you hit Tab in insert mode
set softtabstop=4
" hitting Tab in insert mode will produce the appropriate number of spaces
set expandtab

set encoding=utf-8
" minimum number of screen lines above and below the cursor
set scrolloff=3
set autoindent
set showmode
set showcmd
" hides buffers instead of closing them. This means that you can have
" unwritten changes to a file and open a new file using :e, without being
" forced to write or undo your changes first.
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
" set undofile

" Searching
" These two lines fix Vim’s horribly broken default regex “handling” by
" automatically inserting a \v before any string you search for. This turns
" off Vim’s crazy default regex characters and makes searches use normal
" regexes. 
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Tab matches bracket pairs
"
" " Tab matches bracket pairs
nnoremap <tab> %
vnoremap <tab> %

" Lines, wrapping, line lengths
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Disable arrows
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" make j and k work the way you expect instead of working in some archaic
" movement by file line instead of screen line” fashion.
nnoremap j gj
nnoremap k gk

" ö goes to the end of the line
nnoremap ö 0
nnoremap ä $

" let's try mapping C-c to Esc...
nnoremap <C-c> <Esc>
