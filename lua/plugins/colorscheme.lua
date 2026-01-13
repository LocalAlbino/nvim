return {
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "deep",
      colors = {
        -- Absolute black background
        black = "#000000",
        bg0 = "#000000",
        bg1 = "#050505",
        bg2 = "#0b0b0b",
        bg3 = "#121212",
        bg_d = "#000000",

        -- Foreground (soft gray, not white)
        fg = "#b0b0b0",

        -- Gray accents (very important)
        grey = "#5c5c5c",
        light_grey = "#8a8a8a",

        -- Muted colors (kept subtle)
        red = "#c66b6b",
        green = "#8fbf7f",
        yellow = "#c8b26a",
        blue = "#7aa2c7",
        purple = "#9a7ecc",
        cyan = "#6fbfbf",
        orange = "#c0906b",

        -- Dark variants
        dark_red = "#7a3f3f",
        dark_yellow = "#7a6a3f",
        dark_purple = "#5f3f7a",
        dark_cyan = "#3f6f6f",

        -- UI highlights
        bg_blue = "#1a2633",
        bg_yellow = "#2a2414",

        -- Diff colors (subtle, gray-forward)
        diff_add = "#1a2a1a",
        diff_delete = "#2a1a1a",
        diff_change = "#1a232a",
        diff_text = "#2a3a4a",
      },
    },
    config = function(_, opts)
      local onedark = require("onedark")
      onedark.setup(opts)
      onedark.load()
    end,
  },
}
