return {
  "nickkadutskyi/jb.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- require("jb").setup({transparent = true})
    vim.cmd("colorscheme jb")
    local yellow = "#E5C07B"
    for _, group in ipairs({ "@type", "@lsp.type.class", "@lsp.type.struct" }) do
      vim.api.nvim_set_hl(0, group, { fg = yellow })
    end
  end,
}
