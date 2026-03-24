local status, _ = pcall(require, "nui")
if not status then return end

-- We define a global border style that we can reference elsewhere
-- This ensures Avante and NUI components share the same aesthetic
_G.NUI_BORDER_STYLE = {
  style = "rounded",
  text = {
    top_align = "center",
  },
}

-- You can also use NUI to create a custom floating log for AI debugs
vim.api.nvim_create_user_command("NuiLog", function()
  local Popup = require("nui.popup")
  local popup = Popup({
    enter = true,
    focusable = true,
    border = _G.NUI_BORDER_STYLE,
    position = "50%",
    size = { width = "80%", height = "60%" },
  })
  popup:mount()
end, {})
