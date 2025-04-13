vim.g.mapleader = ' '

-- NvimTree
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Quick exit
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<Leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })

-- FZF
vim.keymap.set('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-p>', ':GFiles<CR>', { noremap = true, silent = true })

-- Quickfix
vim.keymap.set('n', '<C-j>', ':cnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':cprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-o>', ':copen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-c>', ':cclose<CR>', { noremap = true, silent = true })

