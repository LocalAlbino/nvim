-- Set keymaps for common functions --


-- Common function keymaps
vim.keymap.set("n", "<leader>h", ":noh<enter>")

-- Neotree specific keymaps
vim.keymap.set("n", "<leader>e", function()
	vim.cmd("Neotree toggle")
end)
vim.keymap.set("n", "<leader>E", ":Neotree ")

-- Telescope specific keymaps
vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end)
vim.keymap.set("n", "<leader>fc", function()
	require("telescope.builtin").find_files {
		cwd = vim.fn.stdpath("config")
	}
end)
vim.keymap.set("n", "<leader>fr", function()
	require("telescope.builtin").lsp_references()
end)
vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end)

-- LSP specific keymaps
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true })

-- Snacks terminal keymaps
vim.keymap.set("n", "<leader>t", function()
	Snacks.terminal.toggle()
end)
