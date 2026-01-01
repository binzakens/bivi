" Open fzf main UI memu
nnoremap <leader>ff :Files<CR>
" Open fzf on a RECENT file list
nnoremap <leader>fo :History<CR>
" fzf with buffers
nnoremap <leader>fb :Buffers<CR>


nnoremap <leader>fq :clist<CR>    "For quickfix list
nnoremap <leader>fh :Helptags<CR>

" Grep current string
nnoremap <leader>fs :Rg <C-r><C-w><CR>

" Grep input string (fzf prompt)
nnoremap <leader>fg :Rg<Space>


" Find files in your Vim config
nnoremap <leader>fi :Files ~/.vim<CR>

