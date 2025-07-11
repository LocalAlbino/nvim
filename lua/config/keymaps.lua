-- Set keymaps for common functions --


-- Common function keymaps
vim.keymap.set("n", "<leader>h", ":noh<CR>")

-- Neotree specific keymaps
vim.keymap.set("n", "<leader>e", function()
  vim.cmd("Neotree toggle")
end)
vim.keymap.set("n", "<leader>E", ":Neotree ")

-- Telescope specific keymaps
vim.keymap.set("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end)
vim.keymap.set('n', '<leader>fg', function()
  require('telescope.builtin').live_grep()
end)
vim.keymap.set("n", "<leader>fc", function()
  require("telescope.builtin").find_files {
    cwd = vim.fn.stdpath("config")
  }
end)
vim.keymap.set("n", "<leader>fr", function()
  require("telescope.builtin").lsp_references()
end)
vim.keymap.set("n", "<leader>fh", function()
  require("telescope.builtin").help_tags()
end)

-- Documentation comment keymaps (neogen)
vim.keymap.set('n', '<leader>dc', ":Neogen<CR>")

-- Split window creation, resizing, and movement keymaps
vim.keymap.set('n', '<leader>vs', '<C-w>v')
vim.keymap.set('n', '<leader>hs', '<C-w>s')
vim.keymap.set('n', '<C-h>', '<C-w><c-h>')
vim.keymap.set('n', '<C-j>', '<C-w><c-j>')
vim.keymap.set('n', '<C-k>', '<C-w><c-k>')
vim.keymap.set('n', '<C-l>', '<C-w><c-l>')
vim.keymap.set('n', '<M-,>', ':vertical resize +2<CR>')
vim.keymap.set('n', '<M-.>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<M-t>', ':resize +2<CR>')
vim.keymap.set('n', '<M-s>', ':resize -2<CR>')

-- Terminal
-- Store terminal buffer and window ID
local terminal_bufnr = nil
local terminal_winid = nil

local function toggle_terminal()
  -- If terminal is open, close it
  if terminal_winid and vim.api.nvim_win_is_valid(terminal_winid) then
    vim.api.nvim_win_close(terminal_winid, true)
    terminal_winid = nil
    return
  end

  -- Always open a horizontal split for the terminal
  vim.cmd("botright split")
  terminal_winid = vim.api.nvim_get_current_win()

  -- Set terminal height (even for reused buffers)
  vim.api.nvim_win_set_height(terminal_winid, 10)

  -- Load existing buffer or create a new terminal
  if terminal_bufnr and vim.api.nvim_buf_is_valid(terminal_bufnr) then
    vim.api.nvim_win_set_buf(terminal_winid, terminal_bufnr)
  else
    vim.cmd("term")
    terminal_bufnr = vim.api.nvim_get_current_buf()
  end

  -- Configure the terminal buffer
  vim.opt_local.number = false
  vim.opt_local.relativenumber = false
  vim.cmd("startinsert")
end

vim.keymap.set("n", "<C-\\>", toggle_terminal, { noremap = true, silent = true })
vim.keymap.set("t", "<C-\\>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- LSP Specific Keymaps
vim.keymap.set("n", '<grn>', function()
  vim.lsp.buf.rename()
end)
vim.keymap.set("n", '<leader>ca', function()
  vim.lsp.buf.code_action()
end)

-- Supermaven specific keymaps
vim.keymap.set('n', '<leader>smw', ':SupermavenStart<CR>')
vim.keymap.set('n', '<leader>smq', ':SupermavenStop<CR>')
