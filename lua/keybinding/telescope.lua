function bindingOptions()
	return {
		{
			"<leader>ff",
			"<cmd>Telescope find_files<cr>",
			desc = "Telescope file files",
		},
		{
			"<leader>fg",
			"<cmd>Telescope live_grep<cr>",
			desc = "NvimTreeFindFile",
		},
	}
end

return {
	bindingOptions = bindingOptions,
}
