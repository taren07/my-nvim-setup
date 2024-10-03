require('copilot').setup({
    suggestion = { enabled = false },
    panel = { enabled = false },
})

vim.cmd [[
  augroup copilot_setup
    autocmd!
    autocmd VimEnter * lua require('copilot').setup()
  augroup END
]]