-- Load config --
require("config.lazy")
require("config.keymaps")

-- Set some options --

-- Searching and inserting
vim.opt.inccommand = 'split'
vim.opt.smartcase = true
vim.opt.ignorecase = true

-- Terminal stuff
vim.env.COLORTERM = "truecolor"
vim.opt.termguicolors = true

-- Tabs and spacing
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.relativenumber = true
vim.cmd("set nowrap")

-- Sync nvim and os clipboards
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)

-- Highlight when yanking text.
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text.",
	callback = function()
		vim.highlight.on_yank()
	end,
})
