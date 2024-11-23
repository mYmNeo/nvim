require("CopilotChat").setup({
	-- default window options
	---- lazy.nvim opts

	window = {
		layout = "float",
		relative = "cursor",
		width = 1,
		height = 0.4,
		row = 1,
	},
	-- default mappings
	mappings = {
		complete = {
			insert = "<Tab>",
		},
		close = {
			normal = "q",
			insert = "<C-c>",
		},
		reset = {
			normal = "<C-l>",
			insert = "<C-l>",
		},
		submit_prompt = {
			normal = "<CR>",
			insert = "<C-s>",
		},
		toggle_sticky = {
			detail = "Makes line under cursor sticky or deletes sticky line.",
			normal = "gr",
		},
		accept_diff = {
			normal = "<C-y>",
			insert = "<C-y>",
		},
		jump_to_diff = {
			normal = "gj",
		},
		quickfix_diffs = {
			normal = "gq",
		},
		yank_diff = {
			normal = "gy",
			register = '"',
		},
		show_diff = {
			normal = "gd",
		},
		show_system_prompt = {
			normal = "gp",
		},
		show_user_selection = {
			normal = "gs",
		},
		show_user_context = {
			normal = "gc",
		},
		show_help = {
			normal = "gh",
		},
	},
})
