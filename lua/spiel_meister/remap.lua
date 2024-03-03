vim.g.mapleader = " "
vim.keymap.set("n", "<leader>", "")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- Open explorer

-- Git
vim.keymap.set("n", "<leader>gs", vim.cmd.Git) -- Open Git (vim-fugitive) (probably)

-- Terminal
vim.keymap.set("n", "<leader>to", ":term<CR>") -- Open terminal emulator

-- Exotic motions
vim.keymap.set("n", "<leader>jb", "%") -- Jump to next pair

-- Windows
vim.keymap.set("n", "<leader>w", "<C-w>")       -- Don't have time to press Ctrl+w
vim.keymap.set("n", "<leader>sv", "<C-w><C-v>") -- Split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")     -- Split window horizontally
vim.keymap.set("n", "<leader>cw", "<C-w>c")     -- Close window but keep buffer
vim.keymap.set("n", "<leader>kw", "<C-w>o")     -- Close all but selected window
vim.keymap.set("n", "<leader>=w", "<C-w>=")     -- Re size windows to equal size

-- Saving
vim.keymap.set("n", "<leader>sf", ":w<CR>")  -- Save file
vim.keymap.set("i", "<C-s>", "<C-c>:w<CR>a") -- Save file in insert mode

-- Yanking and Pasting
vim.keymap.set("n", "<leader>y", "\"+y")  -- Set up yanking into clipboard
vim.keymap.set("v", "<leader>y", "\"+y")  -- Yank selection into clipboard

vim.keymap.set("n", "<leader>pp", "\"*p") -- Paste clipboard

-- Formatting
vim.keymap.set("n", "<leader>f", function() -- Reformat file (with LSP)
    vim.lsp.buf.format()
end)
vim.keymap.set("n", "<leader>rt", ">>") -- Indent
vim.keymap.set("n", "<leader>lt", "<<") -- Remove indent
