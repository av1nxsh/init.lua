return {
  "supermaven-inc/supermaven-nvim",
  config = function()
    require("supermaven-nvim").setup({
      -- Keymap configuration
      keymaps = {
        accept_suggestion = "<Tab>",        -- Accept suggestion with Tab
        accept_word = "<C-l>",              -- Accept partial suggestion
        clear_suggestion = "<C-]>",         -- Clear current suggestion
        accept_alternative = "<C-j>",       -- Accept alternative suggestion
      },
      
      -- Color configuration
      color = {
        suggestion_color = "#555555",       -- Gray color for suggestions
        cterm = 244,                      -- Terminal color code
      },
      
      -- Filetype exclusions
      ignore_filetypes = { "TelescopePrompt", "NvimTree" },
      
      -- Logging configuration
      log_level = "warn",                   -- Set log level (error, warn, info, debug)
      
      -- API configuration (if using cloud-based features)
      -- api_key = os.getenv("SUPERMAVEN_API_KEY"),
      
      -- Optional: Disable default keymaps
      -- disable_keymaps = false,
      
      -- Optional: Enable suggestions while in insert mode
      -- enable_in_insert_mode = true,
    })

    -- Optional: Add custom keymaps or override existing ones
    vim.keymap.set("i", "<C-k>", function()
      require("supermaven").accept_suggestion()
    end)
  end,
}
