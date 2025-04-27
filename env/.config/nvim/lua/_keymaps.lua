vim.g.mapleader = ' '

-- NvimTree
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- Quick exit
vim.keymap.set("n", "<C-q>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-S-q>", ":q!<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })

-- FZF
vim.keymap.set('n', '<C-p>', ':Files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-p>', ':GFiles<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-b>', ':Buffers<CR>', { noremap = true, silent = true })

-- Quickfix
vim.keymap.set('n', '<C-j>', ':cnext<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':cprev<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-o>', ':copen<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-S-c>', ':cclose<cr>', { noremap = true, silent = true })

-- Copy to system clipboard (doesn't work with Mac)
-- vim.keymap.set('n', '<leader>y', '"+y', { noremap = true, silent = true })

-- Move line up down like
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv", { noremap = true, silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Buffer tab plugin
vim.keymap.set('n', '<leader>l', ":BufferNext<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ":BufferPrevious<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>x', ":BufferClose<CR>", { noremap = true, silent = true })

-- LSP
vim.keymap.set('n', '<F2>', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', ':lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ss', ':lua vim.lsp.buf.signature_help()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-.>', ':lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Show diagnostic message" })

-- Grep
vim.keymap.set('n', '<leader>f', ':RG<CR>', { noremap = true, silent = true })

