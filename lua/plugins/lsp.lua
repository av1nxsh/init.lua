return {
    {
        'junnplus/lsp-setup.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
        },
        event = 'BufRead',  -- Use BufRead instead of LazyFile
        config = function()
            require('lsp-setup').setup({
                default_mappings = true,
                servers = {
                    ts_ls  = {
                        settings = {
                            typescript = {
                                inlayHints = {
                                    includeInlayParameterNameHints = 'all',
                                    includeInlayFunctionParameterTypeHints = true,
                                    includeInlayVariableTypeHints = true,
                                    includeInlayPropertyDeclarationTypeHints = true,
                                    includeInlayFunctionLikeReturnTypeHints = true,
                                    includeInlayEnumMemberValueHints = true,
                                }
                            },
                        }
                    },
                    rust_analyzer = {
                        settings = {
                            ['rust-analyzer'] = {
                                inlayHints = {
                                    bindingModeHints = { enable = false },
                                    chainingHints = { enable = true },
                                    closingBraceHints = { enable = true, minLines = 25 },
                                    typeHints = { enable = true },
                                }
                            },
                        },
                    },
                    svelte = {  -- Changed from svls to svelte (official LSP name)
                        settings = {
                            svelte = {
                                plugin = {
                                    svelte = {
                                        enable = true,
                                        diagnostics = true,
                                        format = {
                                            enable = true
                                        },
                                        hover = true,
                                        completion = true
                                    }
                                },
                                inlayHints = {
                                    parameterHints = { enable = true },
                                    chainingHints = { enable = true },
                                    closingBraceHints = { enable = true, minLines = 25 },
                                    typeHints = { enable = true },
                                }
                            }
                        }
                    },
                }
            })
        end
    }
}
