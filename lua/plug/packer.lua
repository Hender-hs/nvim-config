-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'



	-- Telescope plugin (Amazing plugin)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		-- or                          , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}


	
	-- Rosé Pine theme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
	    end
	})

	use('nvim-treesitter/nvim-treesitter', {run =':TSUpdate'})
	-- use('mbbill/undotree')
	-- | use('nvim-treesitter/playground') |


	

	-- LSP Zero
	-- https://github.com/williamboman/mason.nvim
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
	}



		-- nvim tree lua.
		-- https://github.com/nvim-tree/nvim-tree.lua
		-- Its ICONS requires the "https://www.nerdfonts.com/" fonts configured in your terminal
		-- If in case it fails in the installation, comment the requires and the tag
		use {
		  'nvim-tree/nvim-tree.lua',
		  requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		  },
		  tag = 'nightly' -- optional, updated every week. (see issue #1193)
		}
end)
