vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

vim.keymap.set("n", "<leader>M", "<cmd>Mason<CR>", {desc = "Open Mason"})
vim.keymap.set("n", "<leader>T", "<cmd>InspectTree<CR>", {desc = "Open Treesitter AST"})
vim.keymap.set("n", "<leader>L", "<cmd>Lazy<CR>", {desc = "Open Lazy"} )
