-- Use Packer to manage plugins
require('packer').startup(function(use)
  -- Themes and plugins
  use 'wbthomason/packer.nvim'
  use 'sainnhe/sonokai'
  use 'nvim-tree/nvim-tree.lua'
end)

-- Set the colorscheme
vim.cmd("colorscheme sonokai")

-- General settings
vim.opt.number = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Disable netrw at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit colors (if your terminal supports it)
vim.opt.termguicolors = true

-- Load nvim-tree configuration using Lua
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 40,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

-- Map Ctrl+f to focus on NvimTree window
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
