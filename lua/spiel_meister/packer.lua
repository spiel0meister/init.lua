vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x', -- or tag = ...
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('theprimeagen/harpoon')
    use('theprimeagen/vim-be-good')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = true },
        },
    }

    -- Color
    use {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    }

    use 'joshdick/onedark.vim'

    use "catppuccin/nvim"
    -- Color fin.

    use {
        'nvim-lualine/lualine.nvim', -- Fancier statusline
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'nvim-tree/nvim-web-devicons'

    use 'lukas-reineke/indent-blankline.nvim' -- Add indentation guides even on blank lines

    use({
        'iamcco/markdown-preview.nvim',
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use {
        "ixru/nvim-markdown",
        config = function()
            vim.g.vim_markdown_math = 1
        end
    }

    use "tpope/vim-commentary"

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }

    use 'jiangmiao/auto-pairs'

    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    use {
        "ggandor/leap.nvim",
        branch = "main",
        requires = {
            "tpope/vim-repeat"
        }
    }

    use "tpope/vim-fugitive"

    use "lewis6991/gitsigns.nvim"

    use "nvim-treesitter/nvim-treesitter-context"

    use "mattn/emmet-vim"

    use "lukas-reineke/lsp-format.nvim"

    use "nvim-treesitter/playground"

    use {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
        config = function()
            local trouble = require("trouble")
            vim.keymap.set("n", "<leader>tt", function() trouble.toggle() end)
            vim.keymap.set("n", "<leader>tw", function() trouble.toggle("workspace_diagnostics") end)
            vim.keymap.set("n", "<leader>td", function() trouble.toggle("document_diagnostics") end)
            vim.keymap.set("n", "<leader>tq", function() trouble.toggle("quickfix") end)
            vim.keymap.set("n", "<leader>tll", function() trouble.toggle("loclist") end)
            vim.keymap.set("n", "gR", function() trouble.toggle("lsp_references") end)
        end
    }

    use 'Exafunction/codeium.vim'

    use "projekt0n/github-nvim-theme"

    use {
        "norcalli/nvim-colorizer.lua",
        config = function()
            local colorizer = require('colorizer')
            colorizer.setup()
        end
    }

    use "mg979/vim-visual-multi"

    use {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local todo_comments = require("todo-comments")

            todo_comments.setup()
        end
    }

    use "RRethy/vim-illuminate"

    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "mfussenegger/nvim-dap-python"
end)
