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
		-- Show prompts actions with telescope for CopilotChat
		{
			"<leader>cp",
			function()
				local actions = require("CopilotChat.actions")
				require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
			end,
			desc = "CopilotChat - Prompt actions",
		},
	}
end

return {
	bindingOptions = bindingOptions,
}
