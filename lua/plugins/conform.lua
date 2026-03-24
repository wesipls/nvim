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
    ["_"] = { "trim_whitespace", "trim_newlines", "squeeze_blanks" },
  },
})
