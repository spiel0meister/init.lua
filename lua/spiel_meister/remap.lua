vim.g.mapleader = " "

-- Exit file, open file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>sv", "<C-w><C-v>")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>cw", "<C-w>c")
vim.keymap.set("n", "<leader>wo", "<C-w>o")
vim.keymap.set("n", "<leader>w=", "<C-w>=")

-- Saving
vim.keymap.set("n", "<leader>s", ":w<CR>")
vim.keymap.set("n", "<C-s>", "<C-c>:w<CR>a")
