local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Fuzzy search files" })
vim.keymap.set("n", "<leader>pcf", function()
    builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Fuzzy search files in config" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Fuzzy search git files" })
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Search for string" })
vim.keymap.set("n", "<leader>pds", builtin.lsp_document_symbols, { desc = "Fuzzy serch Document symbols" })
vim.keymap.set("n", "<leader>pws", builtin.lsp_workspace_symbols, { desc = "Fuzzy serch Workspace symbols" })
vim.keymap.set("n", "<leader>ph", builtin.help_tags, { desc = "Fuzzy serch Help tags" })
