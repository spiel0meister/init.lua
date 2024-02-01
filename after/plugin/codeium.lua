-- local codeium = require("codeium")

-- vim.keymap.set("i", "<c-tab>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
vim.keymap.set("i", "<c-j>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
vim.keymap.set("i", "<c-k>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
