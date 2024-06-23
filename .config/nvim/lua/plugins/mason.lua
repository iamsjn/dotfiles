return {
  "williamboman/mason.nvim",

  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "bashls",
        "eslint",
        "tsserver@3.2.0",
        "bashls",
        "angularls@14.0.1",
        "html",
        "jsonls",
        "cssls",
        "lua_ls",
        "pyright",
        "yamlls",
        "lemminx",
        "jdtls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })
  end,
}
