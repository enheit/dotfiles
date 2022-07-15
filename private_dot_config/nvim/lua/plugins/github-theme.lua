require("github-theme").setup({
	theme_style = "light",
	overrides = function(c)
		return {
		  StatusLine = { bg = "transparent" },
		  VertSplit = { fg = "#25282c" }
		}
	end
})

vim.g.github_colors = { hint = "orange", error = "#ff0000" }


