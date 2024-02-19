return {
	settings = {
		clangd = {
			cmd = {
				"clangd",
				"--background-index",
				"--suggest-missing-includes",
			},
			filetypes = { "c", "cpp" },
		},
	},
}
