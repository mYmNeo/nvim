local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

require("config/nvim-web-devicons")
require("config/nvim-tree")
require("config/lspsaga")
require("config/trouble")
require("config/copilot-cmp")
require("config/galaxy_tabline/galaxyline_config")
require("config/nvim-cmp")
require("config/lspconfig")
require("config/format")
require("config/copilot")