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

    use "tpope/vim-commentary"

    use {
        "mg979/vim-visual-multi",
        branch = "master"
    }

    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
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

    use "ggandor/leap.nvim"

    use "tpope/vim-fugitive"

    use "bignimbus/pop-punk.vim"

    use "Djancyp/better-comments.nvim"

    use "rcarriga/nvim-notify"

    use "lewis6991/gitsigns.nvim"
    
    use "nvim-treesitter/nvim-treesitter-context"
end)
