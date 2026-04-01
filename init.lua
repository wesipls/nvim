local parser_dir = vim.fn.stdpath("data") .. "/site"
vim.opt.runtimepath:prepend(parser_dir)
-- SET LEADER
vim.g.mapleader = " "

-- CORE REQUIRES
require("config.options")
require("config.keymaps")
-- PLUGINS
require("plugins.theme")
require("plugins.statusline")
require("plugins.oil")
require("plugins.whichkey")
require("plugins.treesitter")
require("plugins.lsp")
require("plugins.diffview")
require("plugins.gitsigns")
require("plugins.conform")
require("plugins.copilot")
require("plugins.dressing")
require("plugins.cmp")
require("plugins.nui")
require("plugins.avante")
