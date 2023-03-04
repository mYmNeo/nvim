local cmp = require("cmp")

cmp.setup({
	sources = {
		-- Copilot Source
		{ name = "copilot", group_index = 1 },
		{ name = "nvim_lsp", group_index = 2 },
		{ name = "path", group_index = 2 },
		{ name = "luasnip", group_index = 2 },
	},
	mapping = require("keybindings").cmp(cmp),
})
