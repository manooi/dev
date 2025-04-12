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

-- Map Ctrl+f to focus on NvimTree window
vim.g.mapleader = ' '
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<Leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })
vim.keymap.set('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-p>', ':GFiles<CR>', { noremap = true, silent =true })
