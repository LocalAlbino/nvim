return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers.gdscript = {}
    opts.setup.gdscript = function(_, server_opts)
      if vim.fn.has("unix") == 1 then
        server_opts.cmd = { "nc", "127.0.0.1", "6005" }
      else
        server_opts.cmd = { "ncat", "127.0.0.1", "6005" }
      end
      server_opts.filetypes = { "gd", "gdscript", "gdshader" }
      return false
    end
  end,
}
