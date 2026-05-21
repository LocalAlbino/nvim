return {
  "Shatur/neovim-ayu",
  name = "ayu",
  priority = 1000,
  lazy = false,
  config = function()
    require("ayu").setup({
      overrides = function()
        local colors = require('ayu.colors')
        colors.generate()
        return {
          ['@variable.builtin'] = { fg = colors.error },
          Normal = { bg = "None" },
          NormalFloat = { bg = "none" },
          ColorColumn = { bg = "None" },
          SignColumn = { bg = "None" },
          Folded = { bg = "None" },
          FoldColumn = { bg = "None" },
          CursorLine = { bg = "None" },
          CursorColumn = { bg = "None" },
          VertSplit = { bg = "None" },
        }
      end,
    })
    vim.cmd.colorscheme("ayu-dark")
  end,
}
