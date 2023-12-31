local lsp_zero = require("lsp-zero")
local lsp_config = require("lspconfig")
local cmp = require("cmp")

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
    ensure_installed = { 'tsserver', 'rust_analyzer', 'pyright', 'hls', "clangd" },
    handlers = {
        lsp_zero.default_setup,
        biome = lsp_zero.noop
    }
})

lsp_config.tsserver.setup {}
lsp_config.pyright.setup {}
lsp_config.hls.setup {}
lsp_config.clangd.setup {}

-- Inlay hints for Rust
require("lspconfig").rust_analyzer.setup({
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

-- Inlay hints for Javascript/Typescript
require("lspconfig").tsserver.setup({
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayVariableTypeHintsWhenTypeMatchesName = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
  }
})
