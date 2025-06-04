-- Load config --
require("config.lazy")
require("config.keymaps")

-- Set some options --
vim.o.cmdheight = 0

-- Searching and inserting
vim.opt.inccommand = 'split'
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.o.updatetime = 300

-- LSP diagnostic config
vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	underline = true,
	update_in_insert = false,
	float = {
		border = "rounded",
		source = true
	}
})

-- Terminal stuff
vim.o.shell = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"
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

-- LSP Hover to show diagnostic
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false })
	end
})
