-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require('lazy').setup({
	spec = {
		{ 'morhetz/gruvbox' },
		{ 'nvim-tree/nvim-web-devicons' },
		{ 'lewis6991/gitsigns.nvim' },
		{
			'nvim-telescope/telescope.nvim',
			version = '0.1.7',
			-- or                            , branch = '0.1.x',
			dependencies = { { 'nvim-lua/plenary.nvim' } }
		},
		{
			"folke/trouble.nvim",
			config = function()
				require("trouble").setup {
					icons = false,
					-- your configuration comes here
					-- or leave it empty to use the default settings
					-- refer to the configuration section below
				}
			end
		},
		{ "nvim-treesitter/nvim-treesitter",        build = ":TSUpdate" },
		{ "theprimeagen/harpoon" },
		{ "mbbill/undotree" },
		{ "tpope/vim-fugitive" },
		{ "nvim-treesitter/nvim-treesitter-context" },
		{
			'VonHeikemen/lsp-zero.nvim',
			branch = 'v3.x',
			dependencies = {
				-- LSP Support
				{ 'neovim/nvim-lspconfig' },
				{ 'williamboman/mason.nvim' },
				{ 'williamboman/mason-lspconfig.nvim' },

				-- Autocompletion
				{ 'hrsh7th/nvim-cmp' },
				{ 'hrsh7th/cmp-buffer' },
				{ 'hrsh7th/cmp-path' },
				{ 'saadparwaiz1/cmp_luasnip' },
				{ 'hrsh7th/cmp-nvim-lsp' },
				{ 'hrsh7th/cmp-nvim-lua' },

				-- Snippets
				{ 'L3MON4D3/LuaSnip' },
				{ 'rafamadriz/friendly-snippets' },
			},
		},
		-- use("github/copilot.vim")
		{ 'romgrk/barbar.nvim' },
		{ 'numToStr/Comment.nvim' },
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = function()
				require("nvim-autopairs").setup {}
			end
		},
		{
			'nvim-tree/nvim-tree.lua',
			requires = {
				'nvim-tree/nvim-web-devicons', -- optional
			},
		},
	},
	checker = { enabled = true },
})
