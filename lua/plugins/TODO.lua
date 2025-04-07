-- FIXME: This is a temporary fix to get the todo comments working
-- TODO: Add the todo comments to the plugins list
-- HACK: This is a hack to get the todo comments working
-- WARN: This is a warning to get the todo comments working
-- PERF: This is a performance to get the todo comments working
-- NOTE: This is a note to get the todo comments working
-- TEST: This is a test to get the todo comments working
return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>pt", "<cmd>TodoTelescope<cr>", desc = "Todo Telescope" },
        { "<leader>pl", "<cmd>TodoLocList<cr>",   desc = "Todo Loc List" },
    },
    event = 'BufRead', -- Use BufRead instead of LazyFile
    opts = {}
}
