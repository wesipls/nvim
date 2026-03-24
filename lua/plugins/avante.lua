local status, avante = pcall(require, "avante")
if not status then return end
require('avante_lib').load()

-- Track current model
vim.g.avante_current_model = "gpt-4o"

-- Helper to switch models + token limits
local function set_avante_model(model)

  require("avante").setup({
    provider = "copilot",
    auto_suggestions_provider = "copilot",

    providers = {
      copilot = {
        endpoint = "https://api.githubcopilot.com",
        model = model,
        proxy = nil,
        timeout = 30000,
        temperature = 0,
      },
    },

    -- 🔥 Tavily integration
    web_search_engine = {
      provider = "tavily",
      providers = {
        tavily = {
          api_key_name = "TAVILY_API_KEY",
          search_depth = "advanced", -- or "basic" to save cost
          max_results = 5,
        },
      },
    },

    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
    },

    windows = {
      position = "right",
      width = 30,
    },
  })

  vim.g.avante_current_model = model
  print("Avante → " .. model)
end

-- Initial setup
avante.setup({
  provider = "copilot",
  auto_suggestions_provider = "copilot",

  providers = {
    copilot = {
      endpoint = "https://api.githubcopilot.com",
      model = "gpt-4o",
      proxy = nil,
      timeout = 30000,
      temperature = 0,
    },
  },

  web_search_engine = {
    provider = "tavily",
    providers = {
      tavily = {
        api_key_name = "TAVILY_API_KEY",
        search_depth = "advanced",
        max_results = 5,
      },
    },
  },

  behaviour = {
    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
  },

  windows = {
    position = "right",
    width = 30,
  },
})

-- 🔁 Toggle model
vim.keymap.set("n", "<leader>am", function()
  if vim.g.avante_current_model == "gpt-4o" then
    set_avante_model("claude-sonnet-4.6")
  else
    set_avante_model("gpt-4o")
  end
end, { desc = "Toggle Avante model (4o ↔ Sonnet 4.6)" })

