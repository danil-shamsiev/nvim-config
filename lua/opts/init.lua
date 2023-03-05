vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.cmdheight = 0

vim.o.termguicolors = true
vim.cmd [[ colorscheme habamax ]]

require("opts.lsp")
require("opts.vimspector")
