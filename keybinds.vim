" MAPPINGS --------------------------------------------------------------- {{{
" Set the spacebar as the leader key. (Default is backslash "\")
let mapleader = " "

" nnoremap <space> <nop>

" Open netrw with <leader>cd
nnoremap <silent> <leader>cd :Ex<CR>

" Press "``" to jump back to the last cursor position
" nnoremap <leader>z ``
" Press " n" to turn off search highlighting
nnoremap <silent> <leader>n :nohlsearch<CR>


" You can split the window in Vim by typing :split (:sp) or :vsplit (:vs)
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l


" Naviagte between "BUFFERS" in Vim
" Switching between the current buff and the previous buff normally, using
" CTRL 6 (CTRL-^)
nnoremap <leader>b :ls<CR>:b<space>
nnoremap <silent> <S-l> :bnext<CR>
nnoremap <silent> <S-h> :bprev<CR>
nnoremap <silent> [a :e #<CR>


" "QuickFix lists" navigate
nnoremap <silent> ]q :cnext<CR>
nnoremap <silent> [q :cnext<CR>
nnoremap <silent> ]Q :clast<CR>
nnoremap <silent> [Q :cfirst<CR>

nnoremap <silent> <leader>fq :clist<CR>    "For quickfix list


" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w><
noremap <c-right> <c-w>>

" Chain saving the current .vimrc and sourcing it right after
nnoremap <space>s :w<CR>:source ~/.vimrc<CR> 

nnoremap <space>o o<esc>
nnoremap <space>O O<esc>


" Toggle line numbers when copying in Vim
map <silent> \m <esc>:set nu! relativenumber!<CR>
imap <silent> \m <esc>:set nu! relativenumber!<CR>


" ALE on/off
nnoremap \d :ALEDisable<CR>
nnoremap \e :ALEEnable<CR>


" NERDTree specific mappings.
" Map the F2 key to toggle NERDTree open and close.
nnoremap <silent> <F2> :NERDTreeToggle<CR>
" Map the Ctrl E key to find files in NERDTree.
" nnoremap <silent> <C-e> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeFind<CR>

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" }}}
