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
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "numToStr/Comment.nvim" -- Commenting
  use "moll/vim-bbye" -- delete buffers (close files) without closing your windows or messing up your layout.
  use "kyazdani42/nvim-web-devicons" -- Icons
  use "kyazdani42/nvim-tree.lua" -- A file explorer tree
  use "Mephistophiles/surround.nvim" -- Surround text objects

  -- Completion
  -- use "hrsh7th/nvim-cmp" -- The completion plugin
  -- use "hrsh7th/cmp-buffer" -- buffer completions
  -- use "hrsh7th/cmp-path" -- path completions
  -- use "hrsh7th/cmp-nvim-lsp" --LSP
  -- use "hrsh7th/cmp-nvim-lua" --Lua
  -- use "hrsh7th/cmp-emoji" -- Emoji

  -- LSP programming language support
  -- use "neovim/nvim-lspconfig" -- enable LSP
  -- use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  -- use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  -- use "RRethy/vim-illuminate" -- automatically highlight other uses of the current word under the cursor

  -- Telescope
  -- use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "windwp/nvim-ts-autotag"

  -- Git
  use "lewis6991/gitsigns.nvim" -- Git integration for buffers 
  -- lazygit, fugitive, or something similar?

  -- DAP debugging
  -- use "mfussenegger/nvim-dap" -- DAP (Debug Adapter Protocol)
  -- use "rcarriga/nvim-dap-ui" -- A UI for nvim-dap 

  -- Colorschemes
  use "folke/tokyonight.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
