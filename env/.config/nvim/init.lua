-- Use Packer to manage plugins
require('packer').startup(function(use)
  -- Themes and plugins
  use 'wbthomason/packer.nvim'
  use 'sainnhe/sonokai'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use {
    'junegunn/fzf',
    run = function() vim.fn['fzf#install']() end
  }
  use 'junegunn/fzf.vim'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use {
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
  }
}

end)

-- Set the colorscheme
vim.cmd("colorscheme sonokai")

-- General settings
vim.opt.number = true
--vim.opt.relativenumber = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 4

-- Tab & Indent
vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- Enable 24-bit colors (if your terminal supports it)
vim.opt.termguicolors = true
-- Search highlight
vim.opt.hls = false
vim.opt.ic = true
-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Load nvim-tree configuration using Lua
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 20,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

-- Mason + LSP
require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

lspconfig.ts_ls.setup {
    on_attach = function(client, bufnr)
        -- disable tsserver formatting if using null-ls + prettier
        client.server_capabilities.documentFormattingProvider = false
    end,
    filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    capabilities = require('cmp_nvim_lsp').default_capabilities()
}
-- Mason

-- Map Ctrl+f to focus on NvimTree window
vim.g.mapleader = ' '
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<Leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })

-- FZF
vim.keymap.set('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-p>', ':GFiles<CR>', { noremap = true, silent =true })

-- Quick fix
vim.keymap.set('n', '<C-j>', ':cnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':cprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-o>', ':copen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-c>', ':cclose<CR>', { noremap = true, silent = true })




local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})
