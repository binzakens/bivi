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

" :CMake searches for the nearest build directory and runs cmake.
" :CMakeBuild runs the build command, and if the build is unsuccessful, it populates the quickfix list with errors, similar to running :make in a normal Makefile project.
Plug 'cdelledonne/vim-cmake'
"
" Language Server Proto for clang C/C++
" Plug 'yegappan/lsp'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

call plug#end()

" }}}
