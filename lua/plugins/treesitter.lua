return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            -- A list of parser names, or "all"
            highlight = {
                enable = true,
                disable = {},
            },
            indent = {
                enable = true,
                disable = {},
            },
            ensure_installed = {
                "tsx",
                "toml",
                "fish",
                "php",
                "json",
                "yaml",
                "javascript",
                "css",
                "html",
                "lua",
                "vim",
                "json5",
                "bash",
                "scss",
                "markdown",
                "dockerfile",
                "python",
                "typescript",
                "rust",
                "graphql",
            },
            autotag = {
                enable = true,
            },

            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,

            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don"t have `tree-sitter` CLI installed locally
            auto_install = true,

            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on "syntax" being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = { "markdown" },
        })

        local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
        treesitter_parser_config .tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
        treesitter_parser_config.templ = {
            install_info = {
                url = "https://github.com/vrischmann/tree-sitter-templ.git",
                files = {"src/parser.c", "src/scanner.c"},
                branch = "master",
            },
        }

        vim.treesitter.language.register("templ", "templ")
    end
}
