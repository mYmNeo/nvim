-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
vim.opt.cursorline = true

vim.g.mapleader = ","

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

require("config/nvim-web-devicons")
require("config/nvim-tree")
require("config/lspsaga")
require("config/trouble")
--require("config/copilot-cmp")
require("config/galaxy_tabline/galaxyline_config")
require("config/nvim-cmp")
require("config/lspconfig")
require("config/format")
--require("config/copilot")
require("config/gitsigns")
require("config/tokyo-theme")
--require("config/copilot-chat")
require("config/mini")

vim.cmd([[
" colorscheme
colorscheme tokyonight-storm

" formatter
augroup FormatAutogroup
  autocmd! FormatAutogroup
  autocmd BufWritePost * FormatWrite
augroup END

" File encoding dectection
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8

" Tab Settings
set modeline
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Fix backspace indentation
set backspace=indent,eol,start

let no_buffers_menu=1

" Code Folding, everything foleded by default
set foldmethod=indent
set foldlevel=99
set foldenable

" Turn off annoying swapfiles
set noswapfile

" Enable hidden buffers
set hidden

" Enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F\ -\ Vim

" Activate a permanent ruler
set ruler

" Global by default
set gdefault

" Better Search
set hlsearch
set smartcase

" Hide matched on <Leader>space
nnoremap <leader><space> :nohlsearch<CR>

" Quit windows on <leader>q
nnoremap <leader>q :q<CR>

" substitute
nnoremap <leader>ss :%s,

" next split and prev split
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k

" Make the command line two lines high and change the statusline display to
" something that looks useful.
set cmdheight=2
set laststatus=2
set showcmd
set showmode
set number
"set relativenumber

" Color Theme
syntax enable
set background=dark
]])
