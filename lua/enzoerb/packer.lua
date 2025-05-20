vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- Make Pretty
  use { 'dracula/vim', as = 'dracula' }
  use { 'folke/tokyonight.nvim', as = 'tokyonight' }
  use { 'catppuccin/nvim', as = 'catppuccin' }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- use { 'rrethy/vim-hexokinase', run = 'make hexokinase' }

  -- Commenting plugin
  use('tpope/vim-commentary')

  -- Fugitive
  use('tpope/vim-fugitive')

  -- Navegation
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('ThePrimeagen/harpoon')

  -- Treesitter
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')

  -- Note Taking
  use('vimwiki/vimwiki')
  use("jremmen/vim-ripgrep")

  -- Undo Tree
  use('mbbill/undotree')

  -- LSP-Zero
  use('neovim/nvim-lspconfig')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('saadparwaiz1/cmp_luasnip')
  use('L3MON4D3/LuaSnip')
end)
-- desert
