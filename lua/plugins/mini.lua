return {
	"echasnovski/mini.nvim",
	config = function()
		-- Icons
		require('mini.icons').setup()
		-- Surround actions
		require('mini.surround').setup()
		-- LSP Completion
		require('mini.completion').setup()
		-- Statusline
		require('mini.statusline').setup()
		-- Indent scope
		require('mini.indentscope').setup()
	end
}
