vim.opt.termguicolors = true

-- Gruvbox
--vim.cmd("let g:gruvbox_italic=1")
--vim.cmd("colorscheme gruvbox")

-- Catppuccin
vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()
vim.cmd [[colorscheme catppuccin]]

