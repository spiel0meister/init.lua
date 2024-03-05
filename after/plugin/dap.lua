local dap = require("dap")
local dap_ui = require("dapui")
local dap_py = require("dap-python")
dap_ui.setup({})
dap_py.setup()

vim.keymap.set("n", "<leader>dt", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Start/Continue" })

dap.listeners.before.attach.dapui_config = function()
    dap_ui.open()
end
dap.listeners.before.launch.dapui_config = function()
    dap_ui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
    dap_ui.open()
end
dap.listeners.before.event_exited.dapui_config = function()
    dap_ui.open()
end
