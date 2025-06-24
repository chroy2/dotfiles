return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "→",
          pakage_uninstalled = "✗",
        },
      },
    })
    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",
        "gopls",
        "pyright",
        "ruff",
        "svelte",
        "graphql",
        "emmet_ls",
        "lua_ls",
        "eslint",
        "ts_ls",
      },

      automatic_installation = true,
    })
  end,
}
