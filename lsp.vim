" Enable Vim 9 LSP options
    " \  autoComplete: v:true,
    " \  autoHighlight: v:false,
let lspOpts = #{
    \  aleSupport: v:true,
    \  autoHighlightDiags: v:true,
    \  highlightDiagInLine: v:true,
    \  showDiagWithSign: v:true,
    \  inlayHintsEnabled: v:true
    \ }
autocmd User LspSetup call LspOptionsSet(lspOpts)

" Configure Clangd 21.x
let lspServers = [#{
    \	  name: 'clangd',
    \	  filetype: ['c', 'cpp', 'objc', 'objcpp'],
    \	  path: '/usr/bin/clangd',
    \	  args: ['--background-index', '--clang-tidy', '--header-insertion=iwyu']
    \ }]
autocmd User LspSetup call LspAddServer(lspServers)

" Useful Vim 9 mappings for this LSP
nnoremap <buffer> gd <scriptcmd>LspDefinition<CR>
nnoremap <buffer> gr <scriptcmd>LspPeekReferences<CR>
nnoremap <buffer> gi <scriptcmd>LspImplementation<CR>
nnoremap <buffer> K  <scriptcmd>LspHover<CR>



" Correct Path: Changed from /usr/local/bin to /usr/bin/clangd to match your clang --version output.
" Inlay Hints: Clang 21 provides excellent type and parameter hints; 
" inlayHintsEnabled: v:true, allows Vim 9 to display them inline.
" IWYU: Added --header-insertion=iwyu (Include What You Use) in args. This lets clangd automatically add the correct #include statements when you complete a function from a different header.
" Modern Mappings: Used <scriptcmd> which is the Vim 9 way to call functions more efficiently without needing the older :call syntax.
