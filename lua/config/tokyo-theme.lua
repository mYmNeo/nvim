require("tokyonight").setup({
	-- Change the "hint" color to the "orange" color, and make the "error" color bright red
	on_highlights = function(hl, c)
		hl.CursorLineNr = {
			bg = c.green2,
		}
		hl.Visual = {
			bg = c.red,
		}
	end,
})
