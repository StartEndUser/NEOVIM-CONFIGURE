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
--    "clangd",
    "csharp_ls",
    "cssls",
    "html",
    "lua_ls",
    "pyright",
    "rust_analyzer"
  },
}

require("lspconfig").clangd.setup {}
require("lspconfig").csharp_ls.setup {}
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").html.setup {
    capabilities = capabilities,
}
require("lspconfig").cssls.setup {
    capabilities = capabilities,
}
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup {}
require("lspconfig").rust_analyzer.setup {}
