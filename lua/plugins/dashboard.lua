return {
	{
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        local dashboard = require('dashboard')
        local pokemon = require('pokemon')
        pokemon.setup({
            number = '0350',
            size = 'auto',
        })
        dashboard.setup {
            config = {
                header = pokemon.header()
            }
        }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons', 'ColaMint/pokemon.nvim' } }
	}
}
