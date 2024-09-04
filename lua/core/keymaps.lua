local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- neo-tree
keymap('n', '<C-n>', '<cmd>NvimTreeToggle<CR>', opts)
keymap('n', '<C-b>', '<cmd>NvimTreeFocus<CR>', opts)

-- telescope-file-browser
keymap("n", "<space>fb", ":Telescope file_browser<CR>", opts)