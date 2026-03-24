require('nvim-treesitter.install').prefer_git = true
require('nvim-treesitter.install').compilers = { "gcc", "clang" }
local status, ts_config = pcall(require, "nvim-treesitter.config")
ts_config.setup({
    install_dir = vim.fn.stdpath("data") .. "/site",
    ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "bash" },
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = { enable = true },
})
vim.opt.runtimepath:append(vim.fn.stdpath("data") .. "/site")
