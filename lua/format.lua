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
		lua = {
			-- "formatter.filetypes.lua" defines default configurations for the
			-- "lua" filetype
			require("formatter.filetypes.lua").stylua,

			-- You can also define your own configuration
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
			function()
				local shiftwidth = vim.opt.shiftwidth:get()
				local expandtab = vim.opt.expandtab:get()

				if not expandtab then
					shiftwidth = 0
				end

				local path =
					table.concat({ util.get_current_buffer_file_dir(), util.get_current_buffer_file_name() }, "/")
				return {
					exe = "beautysh",
					args = {
						"--indent-size",
						shiftwidth,
						util.escape_path(path),
					},
				}
			end,
		},

		json = {
			function()
				return {
					exe = "jq",
					args = { "." },
					stdin = true,
				}
			end,
		},

		yaml = {
			function()
				return {
					exe = "yamlfmt",
					args = { "-in" },
					stdin = true,
				}
			end,
		},

		py = {
			function()
				return {
					exe = "autopep8",
					args = { "-" },
					stdin = 1,
				}
			end,
		},

		c = {
			function()
				return {
					exe = "clang-format",
					args = {
						"-assume-filename",
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
						"-assume-filename",
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

		-- Use the special "*" filetype for defining formatter configurations on
		-- any filetype
		["*"] = {
			-- "formatter.filetypes.any" defines default configurations for any
			-- filetype
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
