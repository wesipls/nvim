local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
mason.setup({
    ui = { border = "rounded" }
})
mason_lspconfig.setup({
    ensure_installed = { "lua_ls", "phpactor", "pyright", "bashls", "vtsls", "eslint" },
    automatic_enable = true, 
})
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        local opts = { buffer = args.buf }
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K',  vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    end,
})
vim.lsp.config('lua_ls', {
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' } }
        }
    }
})
vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        spacing = 4,
    },
    underline = true,
    update_in_insert = false,
    severity_sort = true,
    float = {
        border = 'rounded',
        source = 'always',
    },
})
