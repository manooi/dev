require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
  end,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

