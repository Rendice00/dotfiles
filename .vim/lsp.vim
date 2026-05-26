let lspOpts = #{
    \   autoHighlightDiags: v:true,
    \   showDiagInStatusLine: v:true,
    \   showDiagWithPopup: v:true,
    \   hoverInPopup: v:true,
    \ }
autocmd User LspSetup call LspOptionsSet(lspOpts)
" LSP servers
let lspServers = [
      \ #{
      \   name: 'pylsp',
      \   filetype: ['python'],
      \   path: '/usr/bin/pylsp',
      \   args: []
      \ },
      \
      \ #{
      \   name: 'godot',
      \   filetype: ['gdscript'],
      \   path: 'nc',
      \   args: ['127.0.0.1', '6005']
      \ },
      \
      \ #{
      \   name: 'clangd',
      \   filetype: ['c', 'cpp'],
      \   path: '/usr/bin/clangd',
      \   args: ['--background-index']
      \ }
      \ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
" g d - definitions
nnoremap gd :LspGotoDefinition<CR>
" g r - references
nnoremap gr :LspShowReferences<CR>
" Shift+k - show docs
nnoremap K  :LspHover<CR>
" g l - LSP diagnostics
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType python,rust,gdscript,php,c,cpp setlocal omnifunc=lsp#complete

