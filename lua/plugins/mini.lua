return {
  "echasnovski/mini.nvim",
  config = function()
    -- Surround actions
    require('mini.surround').setup()
    -- LSP Completion
    require('mini.completion').setup()
    -- Indent scope
    require('mini.indentscope').setup()
    -- Minimal git integration
    require('mini.diff').setup()
  end
}
