return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Ayu Dark palette (official-ish)
    local colors = {
      -- Backgrounds
      bg0 = "#0A0E14", -- editor background
      bg1 = "#0F1419", -- statusline / panels
      bg2 = "#131721",
      bg_d = "#0A0E14",

      -- Foregrounds
      fg = "#B3B1AD",
      grey = "#5C6773",
      light_grey = "#737D87",

      -- Accents (Ayu core colors)
      red = "#F07178",
      green = "#C2D94C",
      yellow = "#FFB454",
      blue = "#59C2FF",
      purple = "#D2A6FF",
      cyan = "#95E6CB",
      orange = "#FF8F40",
    }

    local ayu = {
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
        theme = ayu,
        section_separators = "",
        component_separators = "",
        globalstatus = true,
      },
    })
  end,
}
