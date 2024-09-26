local mason = require('mason')
local lspconfig = require('mason-lspconfig')

mason.setup {}
lspconfig.setup {
    ensure_installed = {
        'html',         -- HTML
        'cssls',        -- CSS
        'bashls',       -- Bash
        'dockerls',     -- Dockerfile
        'vimls',        -- Vim
        'marksman',     -- Markdown
        'phpactor',     -- PHP
        'solargraph',   -- Ruby
        'cssmodules_ls',-- SCSS
        'tailwindcss',  -- Tailwind CSS
        'hls',          -- Haskell
        'gopls',        -- Golang
    }
}