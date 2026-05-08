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
      \ }
      \ ]

autocmd User LspSetup call LspAddServer(lspServers)

" Key mappings
nnoremap gd :LspGotoDefinition<CR>
nnoremap gr :LspShowReferences<CR>
nnoremap K  :LspHover<CR>
nnoremap gl :LspDiag current<CR>
nnoremap <leader>nd :LspDiag next \| LspDiag current<CR>
nnoremap <leader>pd :LspDiag prev \| LspDiag current<CR>
inoremap <silent> <C-Space> <C-x><C-o>

" Set omnifunc for completion
autocmd FileType python,rust,gdscript,php setlocal omnifunc=lsp#complete

