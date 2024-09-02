vim.g.maplocalleader = " "
require("config.lazy")
require("mason").setup()
require("mason-lspconfig").setup()

require("config.keymaps")

vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.termguicolors = true
vim.cmd.colorscheme 'melange'
