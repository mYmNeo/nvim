function bindingOptions()
	return {
		{
			"<leader>m",
			"<cmd>Grapple tag<cr>",
			desc = "GrappleTag",
		},
		{
			"<leader>mm",
			"<cmd>Grapple untag<cr>",
			desc = "GrappleUntag",
		},
		{
			"<leader>pp",
			"<cmd>Grapple toggle_tags<cr>",
			desc = "GrapplePopup",
		},
	}
end

return {
	bindingOptions = bindingOptions,
}
