-- Utilities for creating configurations
local util = require("formatter.util")

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup({
	-- Enable or disable logging
	logging = true,
	-- Set the log level
	log_level = vim.log.levels.WARN,
	-- All formatter configurations are opt-in
	filetype = {
		-- Formatter configurations for filetype "lua" go here
		-- and will be executed in order
		lua = { -- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua, -- You can also define your own configuration
			function()
				-- Supports conditional formatting
				if util.get_current_buffer_file_name() == "special.lua" then
					return nil
				end

				-- Full specification of configurations is down below and in Vim help
				-- files
				return {
					exe = "stylua",
					args = {
						"--search-parent-directories",
						"--stdin-filepath",
						util.escape_path(util.get_current_buffer_file_path()),
						"--",
						"-",
					},
					stdin = true,
				}
			end,
		},

		sh = {
			require("formatter.filetypes.sh").shfmt,
		},

		json = {
			require("formatter.filetypes.json").jq,
		},

		yaml = {
			require("formatter.filetypes.yaml").yamlfmt,
		},

		python = {
			require("formatter.filetypes.python").autopep8,
		},

		c = {
			function()
				return {
					exe = "clang-format",
					args = {
						"--assume-filename",
						util.escape_path(util.get_current_buffer_file_name()),
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		cpp = {
			function()
				return {
					exe = "clang-format",
					args = {
						"--assume-filename",
						util.escape_path(util.get_current_buffer_file_name()),
					},
					stdin = true,
					try_node_modules = true,
				}
			end,
		},

		cmake = {
			function()
				return {
					exe = "cmake-format",
					args = {
						"--line-width",
						"100",
						"--tab-size",
						"2",
						"--command-case",
						"unchanged",
						"--max-lines-hwrap",
						"1",
						"--max-pargs-hwrap",
						"999",
						"--dangle-parens",
						"true",
						"-",
					},
					stdin = true,
				}
			end,
		},

		css = {
			require("formatter.filetypes.css").prettier,
		},

		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},

		xml = {
			require("formatter.filetypes.xml").xmllint,
		},

		go = {
			require("formatter.filetypes.go").gofmt,
		},

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = { -- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
