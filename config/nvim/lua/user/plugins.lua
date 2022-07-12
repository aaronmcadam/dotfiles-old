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

-- Install your plugins here
return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "lewis6991/impatient.nvim" -- Speed up loading Lua modules
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "numToStr/Comment.nvim" -- Commenting
  use "JoosepAlviste/nvim-ts-context-commentstring" -- TSX support in comments
  use "moll/vim-bbye" -- delete buffers (close files) without closing your windows or messing up your layout.
  use "kyazdani42/nvim-web-devicons" -- Icons
  use "kyazdani42/nvim-tree.lua" -- A file explorer tree
  use "ur4ltz/surround.nvim" -- Surround text objects
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "goolord/alpha-nvim" -- Dashboard
  use "ahmedkhalf/project.nvim" -- Projects
  use "nvim-lualine/lualine.nvim" -- Status line

  -- Completion
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-nvim-lsp" --LSP
  use "hrsh7th/cmp-nvim-lua" --Lua
  use "onsails/lspkind.nvim" -- vscode-like pictograms for neovim lsp completion items

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine

  -- LSP programming language support
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "b0o/SchemaStore.nvim" -- JSON schemas
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-file-browser.nvim"
  use { 'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make'
  }

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "windwp/nvim-ts-autotag"

  -- Git
  use "akinsho/toggleterm.nvim" -- Manage terminal windows
  use "lewis6991/gitsigns.nvim" -- Git integration for buffers


  -- DAP debugging
  use "mfussenegger/nvim-dap" -- DAP (Debug Adapter Protocol)
  use "rcarriga/nvim-dap-ui" -- A UI for nvim-dap

  -- Testing
  -- Use a fork that wilkl automatically find the current Nx project.
  -- @see https://github.com/excalios/vim-test/commit/994450b27fd1b667a052bc13b7e80391e8132d93
  use "excalios/vim-test"
  use "nvim-neotest/neotest"
  use "nvim-neotest/neotest-vim-test"
  use "haydenmeade/neotest-jest"

  -- Colorschemes
  use "EdenEast/nightfox.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
