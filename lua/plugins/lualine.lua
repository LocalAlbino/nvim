return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local ayu_dark = {
      bg0 = "#0A0E14",
      bg1 = "#0F1419",
      bg2 = "#131721",
      bg_d = "#0A0E14",
      fg = "#B3B1AD",
      grey = "#5C6773",
      light_grey = "#737D87",
      red = "#F07178",
      green = "#C2D94C",
      yellow = "#FFB454",
      blue = "#59C2FF",
      purple = "#D2A6FF",
      cyan = "#95E6CB",
      orange = "#FF8F40",
    }

    local ayu_light = {
      bg0 = "#FAFAFA",
      bg1 = "#F0F0F0",
      bg2 = "#E6E6E6",
      bg_d = "#FFFFFF",
      fg = "#5C6773",
      grey = "#8A9199",
      light_grey = "#A0A0A0",
      red = "#F07178",
      green = "#86B300",
      yellow = "#FF9940",
      blue = "#399EE6",
      purple = "#A37ACC",
      cyan = "#55E6C1",
      orange = "#E58C00",
    }

    local colors = vim.opt.background:get() == "light" and ayu_light or ayu_dark

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

    local function update_theme()
      colors = vim.opt.background:get() == "light" and ayu_light or ayu_dark
      local new_ayu = {
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
          theme = new_ayu,
          section_separators = "",
          component_separators = "",
          globalstatus = true,
        },
      })
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "ayu-*",
      callback = update_theme,
    })

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
