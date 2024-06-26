vim.g.mapleader = " "

-- Open nvim-tree
vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeToggle)

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Navigate beetween open buffers
vim.keymap.set("n", "<leader>h", "<C-W><C-h>")
vim.keymap.set("n", "<leader>j", "<C-W><C-j>")
vim.keymap.set("n", "<leader>k", "<C-W><C-k>")
vim.keymap.set("n", "<leader>l", "<C-W><C-l>")

vim.keymap.set("n", "<Tab>", vim.cmd.bnext)
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>d", vim.cmd.bdelete)

