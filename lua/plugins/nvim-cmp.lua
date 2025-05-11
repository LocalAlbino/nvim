return
{
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-nvim-lsp',   -- LSP completions
		'hrsh7th/cmp-buffer',     -- Buffer completions
		'hrsh7th/cmp-path',       -- Path completions
		'hrsh7th/cmp-cmdline',    -- Command line completions
		'saadparwaiz1/cmp_luasnip', -- Snippet completions
		'L3MON4D3/LuaSnip',       -- Snippet engine
	},
	config = function()
		local cmp = require('cmp')
		local luasnip = require('luasnip')

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-n>'] = cmp.mapping.select_next_item(),
				['<C-p>'] = cmp.mapping.select_prev_item(),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			}, {
				{ name = 'buffer' },
				{ name = 'path' },
			})
		})
	end
}
