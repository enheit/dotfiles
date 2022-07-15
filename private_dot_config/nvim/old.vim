" Chnages the <leader> key to the comma 
let mapleader = "," " map leader to comma

let g:fzf_layout = { 'down': '~30%' } " Sets the size of the fzf splitwindow
let g:fzf_preview_window = [] " Disables files previe

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set scrolloff=8
set sidescrolloff=8
set encoding=UTF-8
set statusline=\ %f\ %y\ %=\ Git:\ \%{gitbranch#name()},\ Bn:\ %n,\ Ln:\ %l,\ Col:\ %c\ 🇺🇦\ 
set laststatus=3
set splitbelow splitright

call plug#begin()

Plug 'windwp/nvim-autopairs'
Plug 'projekt0n/github-nvim-theme'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/vim-gitbranch'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'cormacrelf/dark-notify'
" Plug 'f-person/auto-dark-mode.nvim'

call plug#end()

lua << EOF
	--[[ 
    local auto_dark_mode = require('auto-dark-mode')

	auto_dark_mode.setup({
		update_interval = 1000,
		set_dark_mode = function()
			vim.api.nvim_set_option('background', 'dark')
			vim.cmd('colorscheme github_dark_default')
		end,
		set_light_mode = function()
			vim.api.nvim_set_option('background', 'light')
			vim.cmd('colorscheme github_light_default')
		end,
	})
    
    auto_dark_mode.init()
    
	--]]
EOF

lua << EOF
	require('dark_notify').run({
		schemes = {
			dark = "github_dark_default",
			light = "github_light_default"
		}
	})
EOF

" Plug 'windwp/nvim-autopairs'
lua << EOF
	require("nvim-autopairs").setup {}
EOF

noremap <leader>o :Files<CR>
noremap <leader>f :BLines<CR>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"nmap <leader>rn <Plug>(coc-rename)

" Plug 'rust-lang/rust.vim'
let g:rustfmt_autosave = 1

let g:github_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

lua << EOF
	require("github-theme").setup({
		theme_style = "light",
		overrides = function(c)
			return {
			  StatusLine = { bg = "transparent" },
			  VertSplit = { fg = "#25282c" }
			}
		end
	})
EOF

" colorscheme github_dark_default

" Tabs navigationl
nnoremap <Tab> gt
nnoremap <S-Tab> gT

" Allows to navigate between splits using CTRL + h,j,k,l keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Split window
nnoremap sh :split<CR>
nnoremap sv :vsplit<CR>

" To open a terminal in a split type :vs|:terminal
" To close a split use Ctrl+W + c

"nnoremap <silent> <C-t> :tabnew<CR>
"nnoremap <silent> <C-w> :tabclose<CR>
