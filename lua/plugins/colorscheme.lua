-- plugins/kanagawa.lua

return {
    "rebelot/kanagawa.nvim",
    lazy = false,    -- Load the plugin lazily
    priority = 1000, -- Higher priority, loads earlier
    config = function()
        -- Set the colorscheme
        vim.cmd "colorscheme kanagawa-dragon"

        -- Optional: Configure kanagawa (replace with your desired settings)
        require("kanagawa").setup({
            --  Override colors of the theme
            --  For full list see here:
            --    :h kanagawa-colors
            colors = {
                palette = {
                    sumiInk0 = "#16161e",
                    sumiInk1 = "#1f1f28",
                    sumiInk2 = "#2a2a37",
                    sumiInk3 = "#343446",
                },
            },
            -- Example of changing some settings
            compile = true,   -- enable compiling colorscheme
            undercurl = true, -- enable undercurl
            commentStyle = { italic = true },
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},             -- leave it empty to use default style
            transparent = false,        -- do not set background color
            dimInactive = false,        -- dim inactive window `:h hl-NormalNC`
            terminalColors = true,      -- define terminal colors as well
            globals = {                 -- change the global colorscheme options (most colors)
                bg_dark = true,         -- darken the background? (true|false)
                float_style = "normal", -- float window style "normal", "minimal", "shadow"
            },
            modules = {                 -- modify module settings
                -- disable diagnostic signs
                -- diagnostics = { enabled = false, signs = false },
                -- disable (almost) all Git related highlights
                gitsigns = { enabled = true },
                -- more examples
                -- indentblankline = { enabled = true },
                -- lspkind = { enabled = true },
                -- cmp = { enabled = true },
                -- "nvim-tree" = { enabled = true },
                -- gitsigns = { enabled = true, override = true },
                -- diagnostics = { override = true, virtual_text = false },
                -- coc = { override = true, disabled_float_shadow = true },
                -- indentblankline = { enabled = true, under_line = true },
                -- telescope = { enabled = true, style = "bordered" },
            },
            theme = "wave",      -- Load "wave" theme when 'background' option is not set
            background = {       -- map the value of 'background' option to a theme
                light = "wave",  -- when `background` is set to 'light'
                dark = "dragon", -- when `background` is set to 'dark'
            },
        })
    end,
}
-- function colorcode(color)
--     color = color or "kanagawa-dragon"
--     vim.cmd.colorscheme(color)
-- end
--
-- return {
--     {
--         "thesimonho/kanagawa-paper.nvim",
--         lazy = false,
--         priority = 1000,
--         opts = {},
--         config = function()
--         end,
--     },
--     {
--         "reblot/kanagawa.nvim",
--         lazy = false,
--         priority = 1000,
--         opts = {},
--     },
--     {
--         "ramojus/mellifluous.nvim",
--         lazy = false,
--         priority = 1000,
--         opts = {
--             -- Your configuration options here.
--         },
--     },
--     {
--         "mellow-theme/mellow.nvim",
--         lazy = false,
--         priority = 1000,
--         opts = {
--             -- Your configuration options here.
--         },
--         config = function()
--             colorcode()
--         end,
--     },
--
--     -- --  the colorscheme should be available when starting Neovim
--     {
--         "folke/tokyonight.nvim",
--         lazy = false,    -- make sure we load this during startup if it is your main colorscheme
--         priority = 1000, -- make sure to load this before all the other start plugins
--         config = function()
--             -- load the colorscheme here
--             require("tokyonight").setup({
--                 on_colors = function(colors)
--                     colors.hint = colors.orange
--                 end,
--                 on_highlights = function(hl, c)
--                     local white = "#a8faff"
--                     hl.TelescopeBorder = {
--                         bg = "none",
--                         fg = white,
--                     }
--                     hl.TelescopePromptBorder = {
--                         bg = "none",
--                         fg = white,
--                     }
--                     hl.TelescopePromptNormal = {
--                         bg = "none",
--                         -- fg = white
--                     }
--                     hl.TelescopeNormal = {
--                         bg = "none",
--                         -- fg = white,
--                     }
--                     hl.TelescopePromptTitle = {
--                         bg = "none",
--                         -- fg = white,
--                     }
--                     hl.TelescopePreviewTitle = {
--                         bg = "none",
--                         -- fg = white,
--                     }
--                     hl.TelescopeResultsTitle = {
--                         bg = "none",
--                         -- fg = white,
--                     }
--                 end,
--                 -- your configuration comes here
--                 -- or leave it empty to use the default settings
--                 style = "night",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--                 transparent = false,    -- Enable this to disable setting the background color
--                 terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
--                 styles = {
--                     -- Style to be applied to different syntax groups
--                     -- Value is any valid attr-list value for `:help nvim_set_hl`
--                     comments = { italic = true },
--                     keywords = { italic = false },
--                     -- Background styles. Can be "dark", "transparent" or "normal"
--                     sidebars = "dark", -- style for sidebars, see below
--                     floats = "dark",   -- style for floating windows
--                 },
--             })
--         end,
--     },
-- }
--
--
-- -- LazySpec (plugin specification)
-- -- { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 }
--
--
--
--
-- -- {
-- --     "nyoom-engineering/oxocarbon.nvim",
-- --     lazy = false,
-- --     priority = 1000,
-- --     config = function ()
-- --         vim.cmd([[colorscheme oxocarbon]])
-- --         -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- --         -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- --         -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
-- --     end
-- -- }
-- --
--
--
--
