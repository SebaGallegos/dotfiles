-- packer
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- packer base
	use 'wbthomason/packer.nvim'

	-- telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
  		requires = { {'nvim-lua/plenary.nvim'} }
	}
	
	-- tema (tokyonight)
	use ({
		'folke/tokyonight.nvim',
		as = 'tokyonight',
		config = function()
			vim.cmd('colorscheme tokyonight')
		end
	})

	-- nvim-tree (explorador)
	use {
  		'nvim-tree/nvim-tree.lua',
  		requires = {
    			'nvim-tree/nvim-web-devicons', -- optional
  		},
	}

	-- LSP
	use({'VonHeikemen/lsp-zero.nvim'})
	use({'neovim/nvim-lspconfig'})
	use({'hrsh7th/nvim-cmp'})
	use({'hrsh7th/cmp-nvim-lsp'})
	use({'williamboman/mason.nvim'})
  	use({'williamboman/mason-lspconfig.nvim'})

end)
