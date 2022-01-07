-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Colorschemes
  use 'tiagovla/tokyodark.nvim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use 'shaunsingh/nord.nvim'
  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {'windwp/nvim-ts-autotag'}
  use 'p00f/nvim-ts-rainbow'
  use {'windwp/nvim-autopairs'}
  -- Lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  -- Packer.nvim
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  -- Nvim-tree
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'nvim-tree'.setup {} end
  }
  use {'folke/which-key.nvim'}
end)
