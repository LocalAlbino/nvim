return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local colors = {
      black = "#0a0c12",
      bg0 = "#090A12",
      bg1 = "#131321",
      bg2 = "#283047",
      bg3 = "#2a364a",
      bg_d = "#07080F",
      bg_blue = "#54b0fd",
      bg_yellow = "#f2cc81",
      fg = "#93a4c3",
      purple = "#c75ae8",
      green = "#8bcd5b",
      orange = "#dd9046",
      blue = "#41a7fc",
      yellow = "#efbd5d",
      cyan = "#34bfd0",
      red = "#f65866",
      grey = "#455574",
      light_grey = "#6c7d9c",
      dark_cyan = "#1b6a73",
      dark_red = "#992525",
      dark_yellow = "#8f610d",
      dark_purple = "#862aa1",
      diff_add = "#27341c",
      diff_delete = "#331c1e",
      diff_change = "#102b40",
      diff_text = "#1c4a6e",
    }
    local onedark_stealth = {
      normal = {
        a = { bg = colors.bg_d, fg = colors.green },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
      insert = {
        a = { bg = colors.bg_d, fg = colors.blue },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
      visual = {
        a = { bg = colors.bg_d, fg = colors.purple },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
      replace = {
        a = { bg = colors.bg_d, fg = colors.red },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
      command = {
        a = { bg = colors.bg_d, fg = colors.yellow },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
      inactive = {
        a = { bg = colors.bg_d, fg = colors.fg },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
      terminal = {
        a = { bg = colors.bg_d, fg = colors.cyan },
        b = { bg = colors.bg0, fg = colors.fg },
        c = { bg = colors.bg1, fg = colors.fg }
      },
    }
    require('lualine').setup {
      options = { theme = onedark_stealth }
    }
  end
}
