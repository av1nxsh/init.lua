return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            highlight = { enable = true, },
            indent = { enable = true, },
            ensure_installed = {
                "tsx",
                "html",
                "json",
                "yaml",
                "javascript",
                "css",
                "lua",
                "json5",
                "scss",
                "markdown",
                "dockerfile",
                "python",
                "typescript",
                "rust",
            },
            -- Automatically install missing parsers when entering buffer
            auto_install = true,

            additional_vim_regex_highlighting = { "markdown" },
        })

    end
}
