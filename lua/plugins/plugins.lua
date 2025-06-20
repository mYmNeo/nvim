return {
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
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	-- trouble.vim
	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
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
	-- mini.nvim
	{ "echasnovski/mini.move", version = "*" },
	{ "echasnovski/mini.pairs", version = "*" },
	{ "echasnovski/mini.surround", version = "*" },
	{
		"kevinhwang91/nvim-ufo",
		enabled = false,
		event = { "BufReadPost", "BufNewFile" },
		dependencies = { "kevinhwang91/promise-async" },
	},
	-- blink
	{
		"saghen/blink.cmp",
		event = { "BufReadPost", "BufNewFile" },
		version = "1.*",
		dependencies = { "xzbdmw/colorful-menu.nvim", opts = {} },
		opts = {
			completion = {
				documentation = {
					auto_show = true,
				},
				menu = {
					draw = {
						columns = { { "kind_icon" }, { "label", gap = 1 } },
						components = {
							label = {
								text = function(ctx)
									return require("colorful-menu").blink_components_text(ctx)
								end,
								highlight = function(ctx)
									return require("colorful-menu").blink_components_highlight(ctx)
								end,
							},
						},
					},
				},
			},
			keymap = {
				["<C-u>"] = { "scroll_documentation_up", "fallback" },
				["<C-d>"] = { "scroll_documentation_down", "fallback" },
			},
			signature = {
				enabled = true,
			},
			cmdline = {
				completion = {
					menu = {
						auto_show = true,
					},
				},
			},
			sources = {
				providers = {
					snippets = { score_offset = 1000 },
				},
			},
		},
	},
}
