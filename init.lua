require("config.lazy")
require("config.remaps")
require("config.set")


local autocmd = vim.api.nvim_create_autocmd
autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    end
})
autocmd('filetype', {
        pattern = 'netrw',
        desc = 'Better mappings for netrw',
        callback = function()
            local bind = function(lhs, rhs)
                vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
            end

        bind('<Right>', '<CR>')
        bind('l', '<CR>')
        bind('<Left>', '-')
        bind('h', '-')
    end
})
autocmd('filetype', {
        pattern = 'nnn',
        desc = 'Better mappings for netrw',
        callback = function()
            local bind = function(lhs, rhs)
                vim.keymap.set('n', lhs, rhs, {remap = true, buffer = true})
            end

        bind('<Right>', '<CR>')
        bind('l', '<CR>')
        bind('<Left>', '-')
        bind('h', '-')
    end
})
-- local actions = require("telescope.actions")
local open_with_trouble = require("trouble.sources.telescope").open

-- Use this to add more results without clearing the trouble list
-- local add_to_trouble = require("trouble.sources.telescope").add

local telescope = require("telescope")

telescope.setup({
  defaults = {
    mappings = {
      i = { ["<c-t>"] = open_with_trouble },
      n = { ["<c-t>"] = open_with_trouble },
    },
  },
})

local config = require("fzf-lua.config")
local actions = require("trouble.sources.fzf").actions
config.defaults.actions.files["ctrl-t"] = actions.open
