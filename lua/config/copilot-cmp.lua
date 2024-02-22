require("copilot_cmp").setup({
	formatters = {
		label = require("copilot_cmp.format").format_label_text,
		insert_text = require("copilot_cmp.format").format_insert_text,
		preview = require("copilot_cmp.format").deindent,
	},
	event = { "InsertEnter", "LspAttach" },
	fix_pairs = true,
})
