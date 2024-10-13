return {
    "luukvbaal/nnn.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 999, -- make sure to load this before all the other start plugins
    keys = {
        { "<leader>nn", "<cmd>NnnPicker<CR>", desc = "open NnnPicker" },
    },
    config = function()
        require("nnn").setup({
            explorer = {
                cmd = "nnn -e",       -- command override (-F1 flag is implied, -a flag is invalid!)
                width = 24,        -- width of the vertical split
                side = "botright",  -- or "botright", location of the explorer window
                session = "",      -- or "global" / "local" / "shared"
                tabs = true,       -- separate nnn instance per tab
                fullscreen = true, -- whether to fullscreen explorer window when current tab is empty
            },
            picker = {
                cmd = "nnn -e",       -- command override (-p flag is implied)
                style = {
                    width = 0.9,     -- percentage relative to terminal size when < 1, absolute otherwise
                    height = 0.8,    -- ^
                    xoffset = 0.5,   -- ^
                    yoffset = 0.5,   -- ^
                    border = "single"-- border decoration for example "rounded"(:h nvim_open_win)
                },
                session = "",      -- or "global" / "local" / "shared"
                tabs = true,       -- separate nnn instance per tab
                fullscreen = true, -- whether to fullscreen picker window when current tab is empty
            },
            auto_open = {
                -- setup = "picker",       -- or "explorer" / "picker", auto open on setup function
                -- tabpage = "picker",     -- or "explorer" / "picker", auto open when opening new tabpage
                empty = true,     -- only auto open on empty buffer
                ft_ignore = {      -- dont auto open for these filetypes
                    "gitcommit",
                }
            },
            auto_close = true,  -- close tabpage/nvim when nnn is last window
            -- replace_netrw = "picker", -- or "explorer" / "picker"
        })
    end,
}
