-- CLEAR SEACH HIGHLIGHT
vim.keymap.set("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlights" })
-- FILE MANAGEMENT
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })

-- SPLIT WINDOW NAVIGATION
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- V-MODE INDENT
vim.keymap.set("v", "<", "<gv", { desc = "Indent out" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent in" })

-- YANKLESS PASTE
vim.keymap.set("v", "p", '"_dP', { desc = "Paste without overwriting register" })

-- OIL
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Oil file manager" })

vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", { desc = "New tab" })

vim.keymap.set("n", "<leader><Right>", "gt", { desc = "Next tab" })
vim.keymap.set("n", "<leader><Left>", "gT", { desc = "Previous tab" })
