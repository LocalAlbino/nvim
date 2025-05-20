return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"folke/lazydev.nvim",
		},
		config = function()
			local lsp = require("lspconfig")

			-- Set up servers
			lsp.lua_ls.setup {}
			lsp.ts_ls.setup {}
			lsp.pyright.setup {}
			lsp.gdscript.setup {}
			lsp.clangd.setup {}
			lsp.gopls.setup {}
			lsp.cssls.setup {
				capabilities = require('cmp_nvim_lsp').default_capabilities()
			}
			lsp.html.setup {
				capabilities = require('cmp_nvim_lsp').default_capabilities()
			}

			vim.api.nvim_create_autocmd('LspAttach', {
				callback = function(args)
					local client = vim.lsp.get_client_by_id(args.data.client_id)
					if client.supports_method('textDocument/formatting') then
						-- Format the current buffer on save
						vim.api.nvim_create_autocmd('BufWritePre', {
							buffer = args.buf,
							callback = function()
								vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
							end,
						})
					end
				end,
			})
		end,
	}
}
