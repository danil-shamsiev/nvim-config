vim.g.mapleader = " "
vim.g.maplocalleader = " "

KEYMAP_OPTS = { noremap = true, silent = true }

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", KEYMAP_OPTS)

require("keymaps.neo_tree")
require("keymaps.vimspector")
require("keymaps.telescope")
require("keymaps.bufferline")
