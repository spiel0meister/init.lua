vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x', -- or tag = ...
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('theprimeagen/harpoon', { run = ':TSUpdate' })
    use('theprimeagen/vim-be-good', { run = ':TSUpdate' })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
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
        "mg979/vim-visual-multi",
        branch = "master"
    }

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

    use "bignimbus/pop-punk.vim"

    use "lewis6991/gitsigns.nvim"

    use "nvim-treesitter/nvim-treesitter-context"

    use "mattn/emmet-vim"

    use "lukas-reineke/lsp-format.nvim"

    use "nvim-treesitter/playground"

    use {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        config = function()
            vim.keymap.set("n", "<leader>tt", function() require("trouble").toggle() end)
            vim.keymap.set("n", "<leader>tw", function() require("trouble").toggle("workspace_diagnostics") end)
            vim.keymap.set("n", "<leader>td", function() require("trouble").toggle("document_diagnostics") end)
            vim.keymap.set("n", "<leader>tq", function() require("trouble").toggle("quickfix") end)
            vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
            vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)
        end
    }

    use 'Exafunction/codeium.vim'
end)
