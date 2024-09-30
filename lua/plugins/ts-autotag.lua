local ts_autotag = require('nvim-ts-autotag')

ts_autotag.setup {
  highlight = {
  enable = true,
  disable = {},
},
indent = {
  enable = true,
  disable = {},
},
  filetypes = {
    "javascript",
    "typescript",
    "tsx",
    "json",
    "html",
    "css",
    "scss",
    "lua",
    "python",
    "rust",
    "go",
    "yaml",
    "toml",
    "json",
  }
}