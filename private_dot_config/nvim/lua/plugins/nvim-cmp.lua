vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"
vim.cmd("highlight Pmenu guibg=NONE")

-- Setup nvim-cmp.
local cmp = require'cmp'
local border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" }

cmp.setup({
	completion = { completeopt = 'menu,menuone,noinsert' } , -- Automatically sleects first suggestion
	snippet = {
	  -- REQUIRED - you must specify a snippet engine
	  expand = function(args)
		vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
	  end,
	},
	window = {
	  completion = {
	    winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
	    col_offset = -3,
	    side_padding = 0,
		border = border,
	  },
	  documentation = {
		winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
		border = border
	  },
	},
	mapping = cmp.mapping.preset.insert({
	  ['<C-k>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-j>'] = cmp.mapping.scroll_docs(4),
	  ['<C-Space>'] = cmp.mapping.complete(),
	  ['<C-e>'] = cmp.mapping.abort(),
	  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
	  { name = 'nvim_lsp' },
	  { name = 'vsnip' }, -- For vsnip users.
	}, {
	  { name = 'buffer' },
	}),
	
  formatting = {
    fields = { "kind", "abbr", "menu" }, -- <- dont forget to add "menu" to the fields list
    format = function(entry, vim_item)
      local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
      local strings = vim.split(kind.kind, "%s", { trimempty = true })
      kind.kind = strings[1]
      --kind.menu = "	" .. strings[2]
	  kind.menu = ({
	     nvim_lsp = "lsp",
	     look = "dict",
	     buffer = "buff"
	  })[entry.source.name]

	  return vim_item
      --return kind
    end,
  }
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
	sources = cmp.config.sources({
	  { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
	}, {
	  { name = 'buffer' },
	})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
	  { name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
	  { name = 'path' }
	}, {
	  { name = 'cmdline' }
	})
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig')['rust_analyzer'].setup {
	capabilities = capabilities
}


