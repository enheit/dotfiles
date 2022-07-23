return require('packer').startup(function()
	-- This is essential for packer to work
	use 'wbthomason/packer.nvim'

	-- Adds support for 'fancy' virtual lines with errors
	use({
	  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	  config = function()
		require("lsp_lines").setup()
	  end,
	})

	-- Used to run rust_analyzer by nvim-lsp
	use 'neovim/nvim-lspconfig'
	use 'onsails/lspkind.nvim'

	-- Required to work with nvim-cmp
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- Adds possiblity to autoclose ', ", (, { and other symbols
	use 'windwp/nvim-autopairs'

	-- GitHub Theme§
	use 'projekt0n/github-nvim-theme'

	-- Add rustlang support
	use 'rust-lang/rust.vim'

	-- Add icons to the files inside project navigator (NerdTree)
	use 'ryanoasis/vim-devicons'

	-- Gives access to the current Git branch. Used to configure status line
	use 'itchyny/vim-gitbranch'

	-- Add fuzzy finder 
	use { 'junegunn/fzf', run = ":call fzf#install()" }
	use 'junegunn/fzf.vim'

	-- Project tree navigation (NerdTREE analogy)
	use 'Shougo/defx.nvim'

	-- Sync system theem with nvim colorschema
	use 'cormacrelf/dark-notify'

	-- Highlight colors in every file 
	use 'norcalli/nvim-colorizer.lua'

	-- Add possiblity to use term inside neovim
	use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
	  require("toggleterm").setup()
	end}
end)
