local lspconfig = require('mason-lspconfig')

lspconfig.setup {
    ensure_installed = {
        'html',         -- HTML
        'cssls',        -- CSS
        'bashls',       -- Bash
        'dockerls',     -- Dockerfile
        'vimls',        -- Vim
        'marksman',     -- Markdown
        'phpactor',     -- PHP
        'cssmodules_ls',-- SCSS
        'tailwindcss',  -- Tailwind CSS
        'hls',          -- Haskell
        'gopls',        -- Golang
    }
}

require'lspconfig'.tailwindcss.setup {}
require'lspconfig'.golangci_lint_ls.setup{}
require'lspconfig'.dhall_lsp_server.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}