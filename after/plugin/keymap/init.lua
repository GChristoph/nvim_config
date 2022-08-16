local Remap = require("chris.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap("<leader>h", "<C-W><C-h>")
nnoremap("<leader>j", "<C-W><C-j>")
nnoremap("<leader>k", "<C-W><C-k>")
nnoremap("<leader>l", "<C-W><C-l>")

-- Open Nvim Tree
nnoremap("<leader>pv", function ()
    require("nvim-tree").toggle()
end)
