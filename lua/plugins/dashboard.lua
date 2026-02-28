return {
  "folke/snacks.nvim",
  dependencies = { "colamint/pokemon.nvim" },
  opts = function(_, opts)
    local pokemon = require("pokemon")

    pokemon.setup({ number = "0350", size = "auto" })
    opts.dashboard = opts.dashboard or {}
    opts.dashboard.preset = opts.dashboard.preset or {}
    opts.dashboard.preset.header = table.concat(pokemon.header(), "\n")
  end,
}
