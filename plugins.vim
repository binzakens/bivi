" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

" Using fzf within VIM
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
"Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dense-analysis/ale'
"
" Tokyo Night colorscheme
Plug 'ghifarit53/tokyonight-vim'
"
" Language Server Proto for clang C/C++
Plug 'yegappan/lsp'

call plug#end()

" }}}
