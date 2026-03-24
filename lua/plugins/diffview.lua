local status, diffview = pcall(require, "diffview")
if not status then return end

diffview.setup({
  enhanced_diff_hl = true,
  view = {
    default = {
      layout = "diff2_horizontal",
      winbar_info = true,
    },
    merge_tool = {
      layout = "diff3_horizontal",
    },
  },
})

-- Keymaps remain the same[cite: 8]
vim.keymap.set('n', '<leader>gd', '<cmd>DiffviewOpen<cr>', { desc = "Open Git Diff" })
vim.keymap.set('n', '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', { desc = "Current File History" })
vim.keymap.set('n', '<leader>gx', '<cmd>DiffviewClose<cr>', { desc = "Close Diff View" })
