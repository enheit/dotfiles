require("github-theme").setup({
	colors = {
    bg_highlight = "#2188ff", -- #db5151 #db51b2

		pmenu = {
			bg = "#transparent"
      -- sbar = "#ff0000", Sidebar color of pop-up hint
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

