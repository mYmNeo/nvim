local lsp_installer = require("mason")
lsp_installer.setup({})

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
	gopls = require("lsp/gopls"),
	bashls = require("lsp/bash"),
	yamlls = require("lsp/yaml"),
	lua_ls = require("lsp/lua"),
}

local cfg = require("lspconfig")
for name, _ in pairs(servers) do
	cfg[name].setup(servers[name])
end
