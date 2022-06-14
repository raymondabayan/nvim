local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
-- keymap("n", "<leader>wh", ":wincmd h<cr>", opts)
-- keymap("n", "<leader>wj", ":wincmd j<cr>", opts)
-- keymap("n", "<leader>wk", ":wincmd k<cr>", opts)
-- keymap("n", "<leader>wl", ":wincmd l<cr>", opts)
-- keymap("n", "<leader>wv", ":vsplit", opts)
-- keymap("n", "<leader>wh", ":hsplit", opts)

-- Resize with arrows
keymap("n", "<leader><Up>", ":resize -2<CR>", opts)
keymap("n", "<leader><Down>", ":resize +2<CR>", opts)
keymap("n", "<leader><Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<leader><Right>", ":vertical resize +2<CR>", opts)

-- Naviagate buffers
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)

-- Move text up and down
-- keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)
-- keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)

-- Insert --

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
-- keymap("v", "<A-j>", ":m .+1<CR>==", opts)
-- keymap("v", "<A-k>", ":m .-2<CR>==", opts)
-- keymap("v", "p", '"_dP', opts)

-- Use jk to quickly enter normal mode from insert mode
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Custom
keymap("n", "<esc><esc>", "<cmd>nohlsearch<cr>", opts)
-- NOTE: the fact that tab and ctrl-i are the same is stupid
-- keymap("n", "<TAB>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>bq", "<cmd>Bdelete!<CR>", opts)
keymap("n", "<F2>", "<cmd>Telescope commands<CR>", opts)
keymap("n", "<F3>", "<cmd>Telescope resume<cr>", opts)
-- keymap(
--   "n",
--   "<leader>ff",
--   "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>",
--   opts
-- )
keymap("n", "<C-t>", "<cmd>lua vim.lsp.buf.document_symbol()<cr>", opts)

-- Change '<CR>' to whatever shortcut you like :)
vim.api.nvim_set_keymap(
  "n",
  "<leader>bb",
  "<cmd>JABSOpen<cr>",
  { noremap = true, silent = true, nowait = true }
)
