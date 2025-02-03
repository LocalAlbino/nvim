-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Only need these keymaps if using neovide
if vim.g.neovide then
    local fontSize = 22 -- default font size
    vim.o.guifont = "Hack Nerd Font Mono:h" .. fontSize -- Set default font and size

    -- Keymaps for increasing or decreasing gui font size
    vim.keymap.set("n", "<C-p>", function()
        fontSize = fontSize + 1
        print("Font size is now " .. fontSize)
        vim.o.guifont = "Hack Nerd Font Mono:h" .. fontSize
    end)
    vim.keymap.set("n", "<C-m>", function()
        fontSize = fontSize - 1
        print("Font size is now " .. fontSize)
        vim.o.guifont = "Hack Nerd Font Mono:h" .. fontSize
    end)
end
