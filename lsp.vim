" let vim-lsp handle the logic and ALE handle the linting
set omnifunc=lsp#complete

augroup LspControl
    autocmd!
    " This triggers specifically when vim-lsp identifies a server is ready
    autocmd User lsp_buffer_enabled setlocal omnifunc=lsp#complete
augroup END

" set completeopt=menuone,noinsert,noselect

" Disable vim-lsp's own diagnostics UI

let g:lsp_diagnostics_enabled = 0         " Disable vim-lsp's own error handling
let g:lsp_highlights_enabled = 0          " Disable vim-lsp's text highlighting for errors
let g:lsp_signs_enabled = 0

" let g:ale_completion_enabled = 0
" let g:ale_disable_lsp = 1

" This allows ALE to show the LSP errors in its own nice UI
let g:ale_linters = {
\   'cpp': ['clangd', 'cppcheck'],
\   'cmake': ['cmake-language-server', 'cmake-lint'],
\}

" 3. Make ALE look nice (Standard 2026 Arch style)
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'


" Mappings for prabirshrestha/vim-lsp (Compatible with your old setup)
nnoremap gd :LspDefinition<CR>
nnoremap gr :LspReferences<CR>
nnoremap K  :LspHover<CR>

" Diagnostics (Replaces LspDiag)
nnoremap gl :LspDocumentDiagnostics<CR>
nnoremap <leader>nd :LspNextDiagnostic<CR>
nnoremap <leader>pd :LspPreviousDiagnostic<CR>

" Autocomplete (C-Space)
inoremap <silent> <C-Space> <C-x><C-o>
inoremap <silent> <C-@>     <C-x><C-o>

