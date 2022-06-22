vim.cmd [[
let g:repl_filetype_commands = {
    \ 'javascript': 'node',
    \ 'python': 'ipython',
    \ 'R' : 'R',
    \ }

let g:repl_split = 'right'

nnoremap <leader>ss :ReplToggle<CR>
nmap <leader>sl <Plug>ReplSendLine
vmap <leader>sl <Plug>ReplSendVisual
]]


