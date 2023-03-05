vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", opts)

require("keymaps.neo_tree")
require("keymaps.vimspector")
require("keymaps.telescope")
require("keymaps.bufferline")
