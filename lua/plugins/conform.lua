return {
	{
		'stevearc/conform.nvim',
		opts = {},
		config = function()
			require('conform').setup({
				formatters_by_ft = {
					typescript = { "prettier" },
					typescriptreact = { "prettier" },
					javascript = { "prettier" },
					javascriptreact = { "prettier" },
				},
			})

			-- Optional: Auto-format on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
				callback = function()
					require('conform').format({ async = true })
				end,
			})
		end
	}
}
