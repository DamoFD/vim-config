-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		"shaunsingh/nord.nvim",
		-- Optional; default configuration will be used if setup isn't called.
		config = function()
			require("nord").set()
		end,
	})
	use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
    use({
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    })
    use( 'folke/trouble.nvim' )
    use{ 'lukas-reineke/indent-blankline.nvim', commit = 'v2.20.8' }
    use( 'hrsh7th/nvim-cmp' )
    use( 'hrsh7th/vim-vsnip' )
    use( 'hrsh7th/vim-vsnip-integ' )
    use({
        'codota/tabnine-nvim',
        run = "./dl_binaries.sh"
    })
    use( 'nvim-tree/nvim-web-devicons' )
    use( 'lewis6991/gitsigns.nvim' )
    use( 'romgrk/barbar.nvim' )

    -- Git
    use({
        'f-person/git-blame.nvim',
        'kdheepak/lazygit.nvim',
        'sindrets/diffview.nvim'
    })

    --Floating Terminal
    use( 'voldikss/vim-floaterm' )

    -- Comment
    use('terrortylor/nvim-comment')

    -- Lualine
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    --Lexima
    use( 'cohama/lexima.vim' )

    -- Notifications
    use( 'rcarriga/nvim-notify' )

    -- Namespace
    use( 'arnaud-lb/vim-php-namespace' )

    -- Vim-Blade
    use( 'jwalton512/vim-blade' )

    -- Emmet
    use('mattn/emmet-vim')

    --lspkind-vim
    use('onsails/lspkind-nvim')

    -- tailwind autocomplete
    use('roobert/tailwindcss-colorizer-cmp.nvim')

    -- Debug Lint
    use({
        'mfussenegger/nvim-dap',
        'mfussenegger/nvim-lint',
    })

    use('HiPhish/rainbow-delimiters.nvim')
    use('p00f/nvim-ts-rainbow')

    -- Autocompletion
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-cmdline')

    -- Snippets
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')

    -- Preconfigured Snippets
    use('rafamadriz/friendly-snippets')

    -- codeium AI
    use {
        'Exafunction/codeium.vim'
    }

    -- Vim Wiki
    -- use('vimwiki/vimwiki')
end)
