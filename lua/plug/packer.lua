-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'



	-- Telescope plugin (Amazing plugin)
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                          , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- https://github.com/catppuccin/nvim
	use({ 
	  "catppuccin/nvim",
	  name = "catppuccin",
	  config = function()
		  require("catppuccin").setup({
			  flavour = "mocha", -- latte, frappe, macchiato, mocha
			  term_colors = false,
			  transparent_background = false,
			  no_italic = false,
			  no_bold = false,
			  styles = {
				  comments = {},
				  conditionals = {},
				  loops = {},
				  functions = {},
				  keywords = {},
				  strings = {},
				  variables = {},
				  numbers = {},
				  booleans = {},
				  properties = {},
				  types = {},
			  },
			  color_overrides = {
				  mocha = {
					  base = "#000000",
					  mantle = "#000000",
					  crust = "#000000",
				  },
			  },
			  highlight_overrides = {
				  mocha = function(C)
					  return {
						  -- TabLineSel = { bg = C.pink },
						  -- CmpBorder = { fg = C.surface2 },
						  -- Pmenu = { bg = C.none },
						  -- TelescopeBorder = { link = "FloatBorder" },
					  }
				  end,
			  },
		  })

		  vim.cmd.colorscheme "catppuccin"
	  end,
	})
	
	-- Rosé Pine theme
	-- use({
		-- 'rose-pine/neovim',
		-- as = 'rose-pine',
		-- config = function()
			-- require("rose-pine").setup()
			-- vim.cmd('colorscheme rose-pine')
	    -- end
	-- })

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
		use {
		  'nvim-tree/nvim-tree.lua',
		  requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		  },
		  tag = 'nightly' -- optional, updated every week. (see issue #1193)
		}
end)
