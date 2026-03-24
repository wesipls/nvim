local status, dressing = pcall(require, "dressing")
if not status then return end

dressing.setup({
  input = { 
    enabled = true, 
    border = "rounded",
    win_options = { winblend = 0 },
  },
  select = { 
    enabled = true, 
    backend = { "nui", "builtin" }, -- NUI moved to the front
    nui = {
      position = "50%",
      size = nil,
      relative = "editor",
      border = {
        style = "rounded",
      },
      buf_options = {
        swapfile = false,
        filetype = "DressingSelect",
      },
      win_options = {
        winblend = 0,
      },
      max_width = 80,
      max_height = 40,
    }
  },
})
