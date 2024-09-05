vim.cmd('autocmd!')

-- vim.scriptencoding('utf-8')
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- autoindent
vim.opt.si = true -- smartindent
vim.opt.wrap = false -- no wrap lines
vim.opt.backspace = 'start, eol, indent'
vim.opt.path:append { '**' } 
vim.opt.wildignore:append { '*/node_modules/*' }