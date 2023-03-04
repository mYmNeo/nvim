local lsp_installer = require("mason")

lsp_installer.setup({install_root_dir = "/Users/thomas/.local/share/nvim/"})

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
    gopls = require "lsp/gopls" -- /lua/lsp/gopls.lua
}

-- 自动安装 LanguageServers
-- for name, _ in pairs(servers) do
-- local server_is_found, server = lsp_installer.get_server(name)
-- if server_is_found then
-- if not server:is_installed() then
-- print("Installing " .. name)
-- server:install()
-- end
-- end
-- end
--
local cfg = require("lspconfig")
for name, _ in pairs(servers) do cfg[name].setup(servers[name]) end
