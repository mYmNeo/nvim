vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- CMP
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})

	-- Copolit
	use({
		"zbirenbaum/copilot.lua",
		cmd = "Copolit",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end,
	})

	-- Copolit Cmp
	use({
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup({
				formatters = {
					label = require("copilot_cmp.format").format_label_text,
					insert_text = require("copilot_cmp.format").format_insert_text,
					preview = require("copilot_cmp.format").deindent,
				},
			})
		end,
	})

	-- Formatter
	use("mhartington/formatter.nvim")

	use("tpope/vim-fugitive")
	use("vim-scripts/LargeFile")
	use("scrooloose/nerdcommenter")
	use("Lokaltog/vim-easymotion")
	use("google/vim-searchindex")
	use("scrooloose/nerdtree")
	use("Xuyuanp/nerdtree-git-plugin")
	use("airblade/vim-gitgutter")
	use("MattesGroeger/vim-bookmarks")
end)
