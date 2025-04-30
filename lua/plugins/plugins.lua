return {
	{
		"hrsh7th/nvim-cmp",
	},
	{
		"williamboman/mason.nvim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		opts = {
			padding = true,
		},
		mappings = {
			---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
			basic = true,
			---Extra mapping; `gco`, `gcO`, `gcA`
			extra = true,
		},
		lazy = false,
	},
	-- lualine
	{
	    'nvim-lualine/lualine.nvim',
	        dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	-- trouble.vim
	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
	--[[
	-- Copolit,
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copolit",
		event = "InsertEnter",
	},
	-- Copolit Cmp
	{
		"zbirenbaum/copilot-cmp",
	},
  ]]
	--
	-- Formatter
	{
		"mhartington/formatter.nvim",
	},
	-- tree
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"kyazdani42/nvim-web-devicons", -- optional
		},
		keys = require("keybinding/nvim-tree").bindingOptions(),
	},
	-- lsp
	{
		"nvimdev/lspsaga.nvim",
		event = "LspAttach",
		dependencies = {
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
		keys = require("keybinding/lspsaga").bindingOptions(),
	},
	-- tag
	{
		"cbochs/grapple.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		keys = require("keybinding/grapple").bindingOptions(),
	},
	-- search
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		keys = require("keybinding/flash").bindingOptions(),
	},
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = require("keybinding/telescope").bindingOptions(),
	},
	-- gitsigns
	{
		"lewis6991/gitsigns.nvim",
	},
	-- copilot char
	--[[
  {
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
  ]]
	--
	-- mini.nvim
	{ "echasnovski/mini.move", version = "*" },
	{ "echasnovski/mini.pairs", version = "*" },
	{ "echasnovski/mini.surround", version = "*" },
}
