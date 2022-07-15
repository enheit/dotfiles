return require('packer').startup(function()
	-- This is essential for packer to work
	use 'wbthomason/packer.nvim'

	-- Adds possiblity to autoclose ', ", (, { and other symbols
	use 'windwp/nvim-autopairs'

	-- GitHub Theme§
	use 'projekt0n/github-nvim-theme'

	-- Add rustlang support
	use 'rust-lang/rust.vim'

	-- Add support for autocomletion
	use {'neoclide/coc.nvim', branch = 'release'}

	-- Syntax checker. Consider to remove it if necessary
	use 'vim-syntastic/syntastic'

	-- Helps comment like a PRO. Consider to remove it if necessary
	use 'preservim/nerdcommenter'

	-- Add icons to the files inside project navigator (NerdTree)
	use 'ryanoasis/vim-devicons'

	-- Gives access to the current Git branch. Used to configure status line
	use 'itchyny/vim-gitbranch'

	-- Add fuzzy finder 
	use { 'junegunn/fzf', run = ":call fzf#install()" }
	use 'junegunn/fzf.vim'

	-- Multiple cursor support. Seems like this plugin is unecessary
	use 'terryma/vim-multiple-cursors'

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
