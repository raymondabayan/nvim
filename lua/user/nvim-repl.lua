vim.cmd [[
let g:repl_filetype_commands = {
    \ 'javascript': 'node',
    \ 'python': 'python',
    \ 'R' : 'R',
    \ }

let g:repl_split = 'right'

nnoremap <leader>ss :ReplToggle<CR>
nmap <leader>sl <Plug>ReplSendLine
vmap <leader>sl <Plug>ReplSendVisual
]]

-- Python pyenv configuration
vim.cmd[[
let g:python3_host_prog = "/Users/raymondjohn/.pyenv/versions/py3nvim/bin/python"
]]

