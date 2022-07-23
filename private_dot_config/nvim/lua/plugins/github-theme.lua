require("github-theme").setup({
	colors = {
		pmenu = {
			bg = "#transparent"
		}
	},
	transparent = true,
	theme_style = "light",
	overrides = function(c)
		return {
		  StatusLine = { bg = "transparent" },
		  VertSplit = { fg = "#25282c" }
		}
	end
})

