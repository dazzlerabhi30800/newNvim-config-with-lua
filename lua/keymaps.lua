vim.g.mapleader = "<leader>"

local keymap = vim.keymap;

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>") -- toggle file explorer
