local keymap = vim.keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', 'tn', ':tabnew<Return>', { silent = true })
keymap.set('n', 'tc', ':tabclose<Return>', { silent = true })
keymap.set('n', 'th', ':tabnext<Return>', { silent = true })

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- neo-tree
keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')

-- telescope-file-browser
keymap.set("n", "<space>fb", ":Telescope file_browser<CR>", opts)

-- BufferLine
keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<cr>', {})
keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<cr>', {})