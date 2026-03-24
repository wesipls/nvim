local wk = require("which-key")

wk.setup({
  preset = "modern",
  win = {
    padding = { 1, 2 },
    title = true,
    title_pos = "center",
  },
  layout = {
    align = "center",
  },
  icons = {
    breadcrumb = "»",
    separator = "➜",
    group = "+",
  },
})
