-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Colorschemes
  use {'tiagovla/tokyodark.nvim'}
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {'shaunsingh/nord.nvim'}
  use({'rose-pine/neovim'})
  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    event = "BufWinEnter",
    config = "require('treesitter-config')"
  }
  use {'windwp/nvim-ts-autotag', event = "InsertEnter", after = "nvim-treesitter"}
  use {'p00f/nvim-ts-rainbow', after = "nvim-treesitter"}
  use {'windwp/nvim-autopairs', config = "require('autopairs-config')", after = "nvim-cmp"}
  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    event = "BufWinEnter",
    config = "require('lualine-config')"
  }
  -- Packer.nvim
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    event = "BufWinEnter",
    config = "require('bufferline-config')"
  }
  -- Nvim-tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons' -- optional, for file icon
    },
    cmd = "NvimTreeToggle",
    config = "require('nvim-tree-config')"
  }
  -- Whichkey
  use {'folke/which-key.nvim', event = "BufWinEnter", config = "require('whichkey-config')"}
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/plenary.nvim'}},
    cmd = "Telescope",
    config = "require('telescope-config')"
  }
  -- Auto completion
  use {'neovim/nvim-lspconfig', config = "require('lsp')"}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-path'}
  use {'hrsh7th/cmp-cmdline'}
  use {'hrsh7th/cmp-vsnip', after = "nvim-cmp"}
  use {'hrsh7th/vim-vsnip', after = "nvim-cmp"}
  use {'onsails/lspkind-nvim'}
  -- Colorizer
  use {'norcalli/nvim-colorizer.lua', event = "BufRead", config = "require('colorizer-config')"}
  -- Gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function()
      require('gitsigns').setup {current_line_blame = true}
    end
  }
  -- Dashboard
  use {'glepnir/dashboard-nvim', config = "require('dashboard-config')"}
  -- Blancline
  use {"lukas-reineke/indent-blankline.nvim", event = "BufRead", config = "require('blankline-config')"}
  -- Auto formatting
  use {'lukas-reineke/format.nvim', cmd = "Format", config = "require('format-config')"}
  -- Toggleterm
  use {"akinsho/toggleterm.nvim", config = "require('toggleterm-config')"}
  -- Nvim-comment
  use {'terrortylor/nvim-comment', cmd = "CommentToggle", config = "require('comment-config')"}
end)

