return
    --  the colorscheme should be available when starting Neovim
    {
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            require("tokyonight").setup({
                on_colors = function(colors)
                    colors.hint = colors.orange
                end,
                 on_highlights = function(hl, c)
                    local white = "#a8faff"
                    hl.TelescopeBorder = {
                        bg = "none",
                        fg = white,
                    }
                    hl.TelescopePromptBorder = {
                        bg = "none",
                        fg = white,
                    }
                    hl.TelescopePromptNormal = {
                        bg = "none",
                        -- fg = white
                    }
                    hl.TelescopeNormal = {
                        bg = "none",
                        -- fg = white,
                    }
                    hl.TelescopePromptTitle = {
                        bg = "none",
                        -- fg = white,
                    }
                    hl.TelescopePreviewTitle = {
                        bg = "none",
                        -- fg = white,
                    }
                    hl.TelescopeResultsTitle = {
                        bg = "none",
                        -- fg = white,
                    }
                end,
               -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
            vim.cmd([[colorscheme tokyonight]])
        end,
    }


-- LazySpec (plugin specification)
-- { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 }




-- {
--     "nyoom-engineering/oxocarbon.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function ()
--         vim.cmd([[colorscheme oxocarbon]])
--         -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--         -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--         -- vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--     end
-- }
--



-- return {
--   "0xstepit/flow.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     require("flow").setup{
--       dark_theme = true, -- Set the theme with dark background.
--       high_contrast = false, -- Make the dark background darker or the light background lighter.
--       transparent = false, -- Set transparent background.
--       fluo_color = "orange", -- Color used as fluo. Available values are pink, yellow, orange, or green.
--       mode = "desaturate", -- Mode of the colors. Available values are: dark, bright, desaturate, or base.
--       aggressive_spell = false, -- Use colors for spell check.
--     }
--
--     vim.cmd "colorscheme flow"
--   end,
-- }
