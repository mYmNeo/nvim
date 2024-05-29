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
	{
		"folke/tokyonight.nvim",
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
	-- galaxyline
	{
		"NTBBloodbath/galaxyline.nvim",
		-- some optional icons
		dependencies = {
			"kyazdani42/nvim-web-devicons",
			lazy = true,
		},
	},
	-- trouble.vim
	{
		"folke/trouble.nvim",
		dependencies = "kyazdani42/nvim-web-devicons",
	},
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
	-- hardtime
	{
		"m4xshen/hardtime.nvim",
		dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
		opts = {},
	},
	-- precognition
	{
		"tris203/precognition.nvim",
		event = "VeryLazy",
		config = {
			startVisible = true,
			showBlankVirtLine = true,
			highlightColor = { link = "Comment" },
			hints = {
				Caret = { text = "^", prio = 2 },
				Dollar = { text = "$", prio = 1 },
				MatchingPair = { text = "%", prio = 5 },
				Zero = { text = "0", prio = 1 },
				w = { text = "w", prio = 10 },
				b = { text = "b", prio = 9 },
				e = { text = "e", prio = 8 },
				W = { text = "W", prio = 7 },
				B = { text = "B", prio = 6 },
				E = { text = "E", prio = 5 },
			},
			-- gutterHints = {
			--     -- prio is not currently used for gutter hints
			--     G = { text = "G", prio = 1 },
			--     gg = { text = "gg", prio = 1 },
			--     PrevParagraph = { text = "{", prio = 1 },
			--     NextParagraph = { text = "}", prio = 1 },
			-- },
		},
	},
}
