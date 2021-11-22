
" ----------------- git gutter
let g:gitgutter_enabled = 1
nnoremap <Leader>gs  :Git status<CR>
nnoremap <Leader>gd  :Git diff<CR>
nnoremap <Leader>Gge  :GitGutterLineHighlightsEnable<CR>
nnoremap <Leader>Ggd  :GitGutterLineHighlightsDisable<CR>
nmap )h <Plug>(GitGutterNextHunk)
nmap (h <Plug>(GitGutter
command! Gqf GitGutterQuickFix | copen " open hunks into quickfixlix


