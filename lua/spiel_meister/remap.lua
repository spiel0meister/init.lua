vim.g.mapleader = " "
vim.keymap.set("n", "<leader>", "")

-- Exit file, open file tree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Exotic motions
vim.keymap.set("n", "<leader>jb", "%")

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>sv", "<C-w><C-v>")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>cw", "<C-w>c")
vim.keymap.set("n", "<leader>kw", "<C-w>o")
vim.keymap.set("n", "<leader>=w", "<C-w>=")

-- Saving
vim.keymap.set("n", "<leader>sf", ":w<CR>")
vim.keymap.set("i", "<C-s>", "<C-c>:w<CR>a")

-- Yanking and Pasting
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>pp", "\"*p")

-- Formatting
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)
vim.keymap.set("n", "<leader>rt", ">>")
vim.keymap.set("n", "<leader>lt", "<<")
