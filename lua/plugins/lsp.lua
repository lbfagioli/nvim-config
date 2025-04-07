-- ~/.config/nvim/init.lua (or lazyvim user/plugins.lua)
return {
  {
    "williamboman/mason.nvim",
    opts = { auto_install = true }, -- Auto-installs LSPs
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = { automatic_installation = true }, -- Auto-setup LSPs
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Basic LSP setup for any language
      local lspconfig = require("lspconfig")
      local on_attach = function(client, bufnr)
        -- Minimal keymaps
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
      end

      -- Example: Auto-setup for Python (adjust for your language)
      lspconfig.pyright.setup({ on_attach = on_attach })
    end,
  },
}
