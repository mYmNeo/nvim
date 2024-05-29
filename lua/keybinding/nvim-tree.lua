function bindingOptions()
	return {
		{
			"<leader>t",
			"<cmd>NvimTreeToggle<cr>",
			desc = "NvimTreeToggle",
		},
		{
			"<leader>tf",
			"<cmd>NvimTreeFindFile<cr>",
			desc = "NvimTreeFindFile",
		},
	}
end

return {
	bindingOptions = bindingOptions,
}
