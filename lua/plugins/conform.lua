local conform = require("conform")
conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    php = { "php_cs_fixer" },
    python = { "black" },
    sh = { "shfmt" },
    rust = { "rustfmt" },
    cpp = { "clang-format" },
    sql = { "sql-formatter" },
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    ["_"] = { "trim_whitespace", "trim_newlines", "squeeze_blanks" },
  },
    format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
