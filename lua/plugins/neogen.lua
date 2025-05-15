return {
	"danymat/neogen",
	config = function()
		require('neogen').setup({
			enabled = true,
			langauges = {
				javascript = {
					template = {
						annotation_convention = 'jsdoc'
					}
				}
			},
			input_after_comment = true,
			snippet_engine = 'luasnip',
		})
	end,
	-- Uncomment next line if you want to follow only stable versions
	-- version = "*"
}
