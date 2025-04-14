return {
	"echasnovski/mini.nvim",
	config = function()
		-- Surround actions
		require('mini.surround').setup()
		-- LSP Completion
		require('mini.completion').setup()
	end
}
