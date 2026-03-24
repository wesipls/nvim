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
        "AvanteSelectedFiles",
        "AvanteTodos",
      },
      winbar = {
        "Avante",
        "AvanteInput",
        "AvanteSidebar",
        "AvanteSelectedFiles",
        "AvanteTodos",
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
