local lsp_zero = require("lsp-zero")
local lsp_config = require("lspconfig")
local cmp = require("cmp")

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.confirm({select = true})
    })
})

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'biome', 'rust_analyzer', 'pyright'},
  handlers = {
    lsp_zero.default_setup,
  }
})

lsp_config.biome.setup {}
lsp_config.pyright.setup {}

-- Inlay hints for rust
lsp_config.rust_analyzer.setup({
  settings = {
    inlayHints = {
      bindingModeHints = {
        enable = false,
      },
      chainingHints = {
        enable = true,
      },
      closingBraceHints = {
        enable = true,
        minLines = 25,
      },
      closureReturnTypeHints = {
        enable = "never",
      },
      lifetimeElisionHints = {
        enable = "never",
        useParameterNames = false,
      },
      maxLength = 25,
      parameterHints = {
        enable = true,
      },
      reborrowHints = {
        enable = "never",
      },
      renderColons = true,
      typeHints = {
        enable = true,
        hideClosureInitialization = false,
        hideNamedConstructor = false,
      },
    },
  }
})
