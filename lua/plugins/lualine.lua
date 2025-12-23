return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local colors = {
      -- Backgrounds
      black = "#000000",
      bg0 = "#000000",
      bg1 = "#050505",
      bg2 = "#0b0b0b",
      bg_d = "#000000",

      -- Foregrounds
      fg = "#b0b0b0",
      grey = "#5c5c5c",
      light_grey = "#8a8a8a",

      -- Muted accent colors (match onedark tweaks)
      red = "#c66b6b",
      green = "#8fbf7f",
      yellow = "#c8b26a",
      blue = "#7aa2c7",
      purple = "#9a7ecc",
      cyan = "#6fbfbf",
      orange = "#c0906b",
    }

    local stealth = {
      normal = {
        a = { bg = colors.bg_d, fg = colors.green },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.bg_d, fg = colors.blue },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.bg_d, fg = colors.purple },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.bg_d, fg = colors.red },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.fg },
      },
      command = {
        a = { bg = colors.bg_d, fg = colors.yellow },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.fg },
      },
      terminal = {
        a = { bg = colors.bg_d, fg = colors.cyan },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.bg_d, fg = colors.grey },
        b = { bg = colors.bg0, fg = colors.grey },
        c = { bg = colors.bg1, fg = colors.grey },
      },
    }

    require("lualine").setup({
      options = {
        theme = stealth,
        section_separators = "",
        component_separators = "",
        globalstatus = true,
      },
    })
  end,
}
