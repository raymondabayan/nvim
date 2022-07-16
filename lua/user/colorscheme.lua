-- Catppuccin colorscheme
-- vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
-- vim.cmd[[colorscheme catppuccin]]
-- local catppuccin = require("catppuccin").setup {
--   sync = true,
--   sync_flavours = {
--     light = "latte",
--     dark = "mocha"
--   },
--   flavour = "mocha"
-- }

-- Modus colorscheme
vim.g.modus_green_strings = 1
vim.g.modus_termtrans_enable = 1
vim.g.modus_yellow_comments = 1
vim.g.modus_faint_syntax = 1
vim.g.modus_cursorline_intense = 1
vim.cmd[[colorscheme modus-operandi]]
-- let g:modus_green_strings = 1
-- let g:modus_faint_syntax = 1
-- let g:modus_termtrans_enable = 1
-- vim.cmd[[
-- set background=light
-- colorscheme PaperColor
-- ]]

-- Gruvbox setup
-- setup must be called before loading the colorscheme
-- Default options:
-- require("gruvbox").setup({
--   undercurl = true,
--   underline = true,
--   bold = true,
--   italic = true,
--   strikethrough = true,
--   invert_selection = false,
--   invert_signs = false,
--   invert_tabline = false,
--   invert_intend_guides = false,
--   inverse = true, -- invert background for search, diffs, statuslines and errors
--   contrast = "", -- can be "hard", "soft" or empty string
--   overrides = {},
-- })
-- vim.cmd("colorscheme gruvbox")

-- local colorscheme = "catpuccin"
--
--local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--if not status_ok then
--  vim.notify("colorscheme " .. colorscheme .. " not found!")
--  return
--end

-- Configuration for github theme
-- require("github-theme").setup({
--   theme_style = "dark",
--   function_style = "italic",
--   keyword_style = "italic",
--   variable_style = "italic",
--   transparent = true,
--   sidebars = {"qf", "vista_kind", "terminal", "packer"},

--   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--   colors = {hint = "orange", error = "#ff0000"},

--   -- Overwrite the highlight groups
--   overrides = function(c)
--     return {
--       htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
--       DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
--       -- this will remove the highlight groups
--       TSField = {},
--     }
--   end
-- })
