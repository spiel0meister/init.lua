local lsp_zero = require("lsp-zero")
local lsp_config = require("lspconfig")
local lsp_format = require("lsp-format")
local cmp = require("cmp")

local function lsp_format_on_attach(client, bufnr)
    lsp_format.on_attach(client, bufnr)
end

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    lsp_zero.default_keymaps({ buffer = bufnr })
    -- lsp_zero.buffer_autoformat()
end)

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.confirm({ select = true })
    })
})

require('mason').setup({})
require('mason-lspconfig').setup({
    -- Replace the language servers listed here
    -- with the ones you want to install
    ensure_installed = { 'tsserver', 'rust_analyzer', 'pyright', 'hls', "clangd", "lua_ls", "asm_lsp", "neocmake", "html", "bashls" },
    handlers = {
        lsp_zero.default_setup,
        biome = lsp_zero.noop
    }
})

lsp_config.tsserver.setup { on_attach = lsp_format_on_attach }
lsp_config.lua_ls.setup { on_attach = lsp_format_on_attach }
lsp_config.pyright.setup { on_attach = lsp_format_on_attach }
lsp_config.hls.setup { on_attach = lsp_format_on_attach }
lsp_config.rust_analyzer.setup({ on_attach = lsp_format_on_attach })
lsp_config.asm_lsp.setup({ on_attach = lsp_format_on_attach })
lsp_config.neocmake.setup({ on_attach = lsp_format_on_attach })
lsp_config.html.setup({ on_attach = lsp_format_on_attach })
lsp_config.bashls.setup({ on_attach = lsp_format_on_attach })
lsp_config.clangd.setup {}
