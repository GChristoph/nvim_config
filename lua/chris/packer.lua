-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Color schemes
    use 'morhetz/gruvbox'
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Mason (Manages External editor tooling
    use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    }

    -- Java
    use ('mfussenegger/nvim-jdtls')

    -- Telescope (Fuyyz Finder)
    use("nvim-telescope/telescope.nvim")
    -- Native fuzzy finding plugin for telescope
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- Setup for Flutter
    use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

    -- CMP
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("simrat39/symbols-outline.nvim")
    use("rafamadriz/friendly-snippets")
    use("glepnir/lspsaga.nvim")

    -- Nvim Surround
    use({
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- Debugging
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- LSP Lines
    use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
        require("lsp_lines").setup()
      end,
    })
end)
