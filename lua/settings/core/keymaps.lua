local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "


-- Telescope
keymap('n', '<leader>ff', "<cmd>Telescope find_files<cr>", opts)
keymap('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", opts)
keymap('n', '<leader>fb', "<cmd>Telescope buffers<cr>", opts)
keymap('n', '<leader>fr', "<cmd>Telescope lsp_references<cr>", opts)