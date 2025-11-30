require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "tailwindcss", "ts_ls", "yamlls", "html", "jsonls", "cssls", "clangd"},
})

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
  end,
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  capabilities = require('cmp_nvim_lsp').default_capabilities()
}

lspconfig.tailwindcss.setup({
  filetypes = {
    "html",
    "css",
    "scss",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "svelte",
    "vue",
  },
  capabilities = require('cmp_nvim_lsp').default_capabilities()
})

lspconfig.cssls.setup({
  filetypes = { "css", "scss", "sass" },
  capabilities = require("cmp_nvim_lsp").default_capabilities()
})

lspconfig.html.setup({
  filetypes = { "html"},
  capabilities = require("cmp_nvim_lsp").default_capabilities()
})

lspconfig.jsonls.setup({
  filetypes = { "json"},
  capabilities = require("cmp_nvim_lsp").default_capabilities()
})

lspconfig.yamlls.setup({
  filetypes = { "yaml", "yml"},
  capabilities = require("cmp_nvim_lsp").default_capabilities()
})

lspconfig.clangd.setup({
  filetypes = { "c" },
  capabilities = require("cmp_nvim_lsp").default_capabilities()
})

