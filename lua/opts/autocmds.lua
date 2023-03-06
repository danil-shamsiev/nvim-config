local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
	pattern = "",
	command = "ColorizerAttachToBuffer",
})

autocmd("VimEnter", {
	pattern = "",
	command = "Neotree show",
})
