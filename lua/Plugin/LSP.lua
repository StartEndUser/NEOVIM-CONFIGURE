require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup {
  ensure_installed = {
    "bashls",
--    "clangd",
    "csharp_ls",
    "lua_ls",
    "pyright",
    "rust_analyzer"
  },
}

require("lspconfig").bashls.setup {}
require("lspconfig").clangd.setup {}
require("lspconfig").csharp_ls.setup {}
require("lspconfig").gdscript.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").rust_analyzer.setup {}
