vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<leader>L', '<CMD>Lazy<CR>', { desc = 'Open Lazy' })
vim.keymap.set('n', '<leader>M', '<CMD>Mason<CR>', { desc = 'Open Mason' })
