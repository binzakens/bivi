"*****************************************************************************
"" Basic Setup
"*****************************************************************************
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

syntax enable

set term=kitty

"" Enable hidden buffers
set hidden

"" Searching UI
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Line number UI
set number
set relativenumber

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable folding with code
set foldmethod=syntax
set foldlevelstart=1  " Starts with functions closed, but top-level classes open


" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent type for the detected file type.
filetype indent on

