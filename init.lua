-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.colorscheme("onedark") -- Set colorscheme (onedark)

-- Sync OS and Neovim clipboard
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- Set some neovide settings
if vim.g.neovide then
    vim.g.neovide_refresh_rate = 165
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_position_animation_length = 0
    vim.g.neovide_scroll_animation_length = 0
end
