source ~/.vim/basics.vim
source ~/.vim/keybinds.vim
source ~/.vim/plugins.vim
source ~/.vim/colorscheme.vim

source ~/.vim/cmake.vim

source ~/.vim/fzf.vim
source ~/.vim/lsp.vim



" VIMSCRIPT -------------------------------------------------------------- {{{



" NERDTree section "
" Exit Vim if NERDTree is the only window remaining in the current tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" }}}




"*****************************************************************************
"" Custom configs
"*****************************************************************************

" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab




" STATUS LINE/ POWER LINE ------------------------------------------------------------ {{{


set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\


if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1

" }}}
