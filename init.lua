-- Load config --
require("config.lazy")
require("config.keymaps")

-- Set some options
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.api.nowrap = true
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text.",
	callback = function()
		vim.highlight.on_yank()
	end,
})
