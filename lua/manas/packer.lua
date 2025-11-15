return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	--Formatter
	use {
		"nvimtools/none-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	}

	-- Colorscheme
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	})

	-- Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

	-- Harpoon
	use('ThePrimeagen/harpoon')

	-- LSP + Autocompletion
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'}, -- Removed run from here
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	use 'tpope/vim-surround'
	use 'windwp/nvim-autopairs'
	use 'norcalli/nvim-colorizer.lua'
	use 'nvim-lualine/lualine.nvim'
	use 'lukas-reineke/indent-blankline.nvim'

end)
