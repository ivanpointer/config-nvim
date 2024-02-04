-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- find more at: https://dotfyle.com/neovim/colorscheme/top
  --  Be sure to update in after/plugin/colors.lua
  use({
	  'folke/tokyonight.nvim',
	  as = 'tokyonight',
	  config = function()
		  vim.cmd('colorscheme tokyonight-night')
	  end
  })

  use({
	'Mofiqul/dracula.nvim',
	as = 'dracula',
	config = function()
		vim.cmd('colorscheme dracula')
	end
  })

  -- Treesitter (better syntax highlighting)
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

  -- Harpoon (navigation)
  use('theprimeagen/harpoon')

  -- Undotree
  use('mbbill/undotree')

  -- git
  use('tpope/vim-fugitive')
  use('lewis6991/gitsigns.nvim')

  -- ui
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

  -- lsp-zero
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

  -- go
  use {
    'ray-x/go.nvim',
    'ray-x/guihua.lua'
  }

end)
