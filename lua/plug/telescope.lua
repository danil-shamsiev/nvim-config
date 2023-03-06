require("telescope").setup({
	defaults = {
		mappings = {
			i = {
				["<C-n>"] = require("telescope.actions").cycle_history_next,
				["<C-p>"] = require("telescope.actions").cycle_history_prev,
				["<C-k>"] = require("telescope.actions").move_selection_previous,
				["<C-j>"] = require("telescope.actions").move_selection_next,
			},
		},
	},
})
