-- Lua
-- vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
-- vim.cmd[[colorscheme catppuccin]]

-- vim.cmd[[
-- colorscheme modus-operandi
-- let g:modus_green_strings = 1
-- let g:modus_faint_syntax = 1
-- let g:modus_termtrans_enable = 1
-- ]]
-- vim.g.modus_green_strings = 1
-- vim.g.modus_termtrans_enable = 1
-- vim.cmd[[
-- set background=light
-- colorscheme PaperColor
-- ]]

-- local catppuccin = require("catppuccin").setup {
--   sync = true,
--   sync_flavours = {
--     light = "latte",
--     dark = "mocha"
--   },
--   flavour = "mocha"
-- }

-- local colorscheme = "catpuccin"
--
--local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
--if not status_ok then
--  vim.notify("colorscheme " .. colorscheme .. " not found!")
--  return
--end
-- Example config in Lua
require("github-theme").setup({
  theme_style = "light",
  function_style = "italic",
  keyword_style = "italic",
  variable_style = "italic",
  transparent = true,
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})
