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

-- Documentation comment keymaps (neogen)
vim.keymap.set('n', '<leader>df', ":lua require('neogen').generate({type='func'})<CR>")
vim.keymap.set('n', '<leader>dc', ":lua require('neogen').generate({type='class'})<CR>")
vim.keymap.set('n', '<leader>dt', ":lua require('neogen').generate({type='type'})<CR>")
vim.keymap.set('n', '<leader>db', ":lua require('neogen').generate({type='file'})<CR>")

-- Split window creation, resizing, and movement keymaps
vim.keymap.set('n', '<leader>vs', '<C-w>v')
vim.keymap.set('n', '<leader>hs', '<C-w>s')
vim.keymap.set('n', '<C-h>', '<C-w><c-h>')
vim.keymap.set('n', '<C-j>', '<C-w><c-j>')
vim.keymap.set('n', '<C-k>', '<C-w><c-k>')
vim.keymap.set('n', '<C-l>', '<C-w><c-l>')
vim.keymap.set('n', '<M-,>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<M-.>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<M-t>', ':resize +2<CR>')
vim.keymap.set('n', '<M-s>', ':resize -2<CR>')

-- LSP specific keymaps
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sd', function()
	vim.diagnostic.open_float()
end)
