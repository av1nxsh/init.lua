return {
  {
    "sontungexpt/sttusline",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = { "BufEnter" },
    config = function()

      -- Then setup the statusline
      require("sttusline").setup {
        laststatus = 2,
        statusline_color = "StatusLine",
        disabled = {
          filetypes = {
            -- "NvimTree",
            -- "lazy",
          },
          buftypes = {
            -- "terminal",
          },
        },
        components = {
          "mode",
          "filename",
          "git-branch",
          "git-diff",
          "datetime",
          "%=",
          "diagnostics",
          "lsps-formatters",
          "copilot",
          "indent",
          "encoding",
          "pos-cursor",
          "pos-cursor-progress",
        },
      }
    end,
  }
}
