return {
    'junnplus/lsp-setup.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-vsnip',
        'hrsh7th/vim-vsnip',
    },
    event = 'BufRead', -- Use BufRead instead of LazyFile
    config = function()
        vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

        local cmp = require('cmp')
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'vsnip' },
                { name = 'buffer' },
                { name = 'path' }
            })
        })

        require('lsp-setup').setup({
            default_mappings = true,
            servers = {
                ts_ls = {
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
                svelte = {
                    settings = {
                        svelte = {
                            plugin = {
                                svelte = {
                                    enable = true,
                                    diagnostics = true,
                                    format = { enable = true },
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
                lua_ls = {
                    settings = {
                        Lua = {
                            hint = {
                                enable = false,
                                arrayIndex = "Auto",
                                await = true,
                                paramName = "All",
                                paramType = true,
                                semicolon = "SameLine",
                                setType = false,
                            },
                        },
                    },
                },
                -- Add pyright for Python
                pyright = {
                    settings = {
                        python = {
                            analysis = {
                                typeCheckingMode = "basic",
                                autoImportCompletions = true,
                            },
                        },
                    },
                },
            },
            inlay_hints = {
                enabled = true,
                highlight = 'Comment',
            },
            capabilities = require('cmp_nvim_lsp').default_capabilities()
        })
    end
}

