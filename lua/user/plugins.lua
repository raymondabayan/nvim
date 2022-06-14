local fn = vim.fn
-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Plugins to be installed using packer
return packer.startup(function(use)
  -- let packer manaage itself
  use "wbthomason/packer.nvim" -- packer package management
  use "nvim-lua/popup.nvim" -- popup windows)
  use "nvim-lua/plenary.nvim" -- a core package that is used by a lot of other plugins
  use "windwp/nvim-autopairs" -- autopairing, good integration with cmp and treesitter
  -- Aesthetics
  -- -> Icons & colors
  use "norcalli/nvim-colorizer.lua" -- adds color to hex codes
  use "kyazdani42/nvim-web-devicons" -- Nice icons used by a lot of plugins (must use a nerd font to make them display nicely
  -- -> Frame features
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
} -- statusline written in lua
  use "goolord/alpha-nvim" -- startup dashboard
  -- -> Colorschemes
  use "morhetz/gruvbox" -- classic community retro theme
  use(
    {
      "catppuccin/nvim",
      as = "catppucin",
    }
  ) -- nice theme that is a medium between solarized and normal, comes in 'frappe' (light), 'macchiato' (medium), 'mocha' (darker), and 'dusk' (very dark)
  -- Vim tools
  use "tpope/vim-repeat" -- allows to repeat command in normal mode with '.'
  use "tpope/vim-commentary" -- quickly comment/uncomment with 'gc'
  use "Mephistophiles/surround.nvim" -- quickly surround text with ',",{,{,(
  use "antoinemadec/FixCursorHold.nvim" -- fixes lags with cursor hold when highlighting
  -- use "lervag/vimtex" -- export .tex files to pdf (maybe use emacs for this instead)
  use "moll/vim-bbye" -- close buffers without closing all buffers
  -- Lua/Neovim tools
  use "lewis6991/impatient.nvim" -- Improves startup time for Neovim by clearing cache

  use "akinsho/toggleterm.nvim" -- Spawn terminals in normal mode
  use {
    "christianchiarulli/JABS.nvim",
    requires = "kyazdani42/nvim-web-devicons" } -- Pretty buffer switcher popup
  use {
    "ghillb/cybu.nvim",
    branch = "main",
    requires = { "kyazdani42/nvim-web-devicons" }, } -- wrapper for :bnext to show relationships and context of buffers

  -- Telescope (file finding)
  use "nvim-telescope/telescope.nvim" -- Powerful dired-like file navigation
  use "nvim-telescope/telescope-media-files.nvim"
  use "nvim-telescope/telescope-ui-select.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
   use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  } 
  use "junegunn/fzf"

  -- use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' } -- fzf port written in c

  -- Which-key
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  -- File Editing Tools
  use "unblevable/quick-scope" -- allows for fast word finding using f<char> like vim, but better
  use "phaazon/hop.nvim" -- hop to any word or character in a buffer with elegant speed
  use "andymass/vim-matchup" -- allows extension of vim's % function to operate on matching sets of text
  use "nacro90/numb.nvim" -- allows for peeking of certain lines in buffer
  use "monaqa/dial.nvim" -- allows for extension of increment and decrement neovim feature (i.e. 8 -> 9)
  use "windwp/nvim-spectre" -- use regex to find and replace
  use "ThePrimeagen/harpoon" -- harpoon multiple files and rotate between them
  use "rcarriga/nvim-notify" -- notification popups
  use { "christianchiarulli/nvim-gps", branch = "text_hl" }

  -- Treesitter (parser for languages) & readability improvements
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use { "p00f/nvim-ts-rainbow" } -- colors of the rainbow
  use "lukas-reineke/indent-blankline.nvim" -- adds indent guidelines
  use "mizlan/iswap.nvim"

  -- Python Programming
  use "pappasam/nvim-repl"
  use "hkupty/iron.nvim"

  -- R programming
  use "kevinhwang91/rnvimr"
  use "jalvesaq/Nvim-r"
  use "ncm2/ncm2"
  use "roxma/nvim-yarp"
  use "gaalcaras/ncm-R"
  use "Raimondi/delimitMate"
  use "ncm2/ncm2-bufword"
  use "ncm2/ncm2-path"
  use "roxma/vim-hug-neovim-rpc"

  -- Ruby programming
  -- use "tpope/vim-rails"
  -- use "vim-ruby/vim-ruby"

  -- Org Mode


  use "nvim-orgmode/orgmode" -- The one and only
  use "akinsho/org-bullets.nvim" -- fancy bullets for org files
  use { "michaelb/sniprun", run = "bash ./install.sh" } -- run code blocks
  use "dhruvasagar/vim-table-mode"
  use "godlygeek/tabular"

  -- Vimwiki
  use {
    "vimwiki/vimwiki",
    config = function()
      vim.g.vimwiki_list = {
        {
          path = "~/Dropbox/vimwiki/",
          syntax = "markdown",
          ext = ".md",
        }
      }
      vim.g.vimwiki_ext2syntax = {
        [".md"] = "markdown",
        [".markdown"] = "markdown",
        [".mdown"] = "markdown",
      }
    end
  }
  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
  }

  -- CMP (Autocompletion)
  -- use "hrsh7th/nvim-cmp" -- The completion plugin
  use {
    "hrsh7th/nvim-cmp",
    -- commit = "dbc72290295cfc63075dab9ea635260d2b72f2e5",
  }
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lua"
  use "rcarriga/cmp-dap"
  use {
    "tzachar/cmp-tabnine",
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
        run_on_every_keystroke = true,
        snippet_placeholder = "..",
        ignored_file_types = { -- default is not to ignore
          -- uncomment to ignore in lua:
          -- lua = true
        },
      }
    end,

    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  }
  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  use "simrat39/symbols-outline.nvim"
  use "ray-x/lsp_signature.nvim"
  use "b0o/SchemaStore.nvim"
  use {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  }
  use "github/copilot.vim"
  use "RRethy/vim-illuminate"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "f-person/git-blame.nvim"
  use "ruifm/gitlinker.nvim"
  use "mattn/vim-gist"
  use "mattn/webapi-vim"
  use "https://github.com/rhysd/conflict-marker.vim"
  -- Lazygit (like a magit for neovim)
  use "kdheepak/lazygit.nvim"

  -- DAP
  use "mfussenegger/nvim-dap"
  use "theHamsta/nvim-dap-virtual-text"
  use "rcarriga/nvim-dap-ui"
  use "Pocco81/DAPInstall.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
