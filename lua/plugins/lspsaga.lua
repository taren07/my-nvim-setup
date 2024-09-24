local saga = require('lspsaga')

saga.setup {}

local opts = {
    noremap = true,
    silent = true
}

vim.keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
vim.keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
vim.keymap.set('n', 'gd', '<cmd>Lspsaga finder<cr>', opts)
vim.keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)