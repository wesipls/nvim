require('lualine').setup({
  options = {
    theme = 'tokyonight',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},

    disabled_filetypes = {
      statusline = {
        "Avante",
        "AvanteInput",
        "AvanteSidebar",
      },
      winbar = {
        "Avante",
        "AvanteInput",
        "AvanteSidebar",
      },
    },
  },
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "Avante", "AvanteInput", "AvanteSidebar" },
  callback = function()
    vim.opt_local.winbar = nil
    vim.opt_local.statusline = ""
  end,
})
