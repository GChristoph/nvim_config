-- Disable Netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load config
require("chris")

-- load legacy options
vim.cmd([[
so ~/.config/nvim/legacy.vim
]])

