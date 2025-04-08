return {
    "rebelot/kanagawa.nvim",
    lazy = false,    -- Load the plugin lazily
    priority = 1000, -- Higher priority, loads earlier
    config = function()
        vim.cmd "colorscheme kanagawa-dragon"
        require('kanagawa').setup({
            transparent=true
        })
    end,
}
