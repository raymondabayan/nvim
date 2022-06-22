local options = {
backup = false,
clipboard = "unnamedplus",
cmdheight = 2,
completeopt = {"menuone", "noselect"},
conceallevel = 0,
fileencoding = "utf-8",
hlsearch = true,
ignorecase = true,
mouse = "a",
pumheight = 10,
showmode = false,
showtabline = 0,
smartcase = true,
smartindent = true,
splitbelow = true,
splitright = true,
swapfile = false,
termguicolors = true,
timeoutlen = 100,
undofile = true,
updatetime = 50,
writebackup = false,
expandtab = true,
shiftwidth = 2,
tabstop = 2,
cursorline = true,
number = true,
laststatus = 3,
showcmd = false,
ruler = false,
relativenumber = false,
numberwidth = 4,
signcolumn = "yes",
scrolloff = 11,
sidescrolloff = 8,
guifont = "Hack Nerd Font:h14",

}

vim.opt.wrap = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.fillchars.eob = " "

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
-- vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

vim.filetype.add({
    extension = {
      conf = "dosini",
  },
})

vim.cmd [[let R_assign=0]]
