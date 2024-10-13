return{
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    config = function ()
        vim.o.foldcolumn = '1' -- '0' is not bad
        vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true
        require('ufo').setup({
            vim.keymap.set('n', 'zR', require('ufo').openAllFolds);
            vim.keymap.set('n', 'zM', require('ufo').closeAllFolds);
            vim.keymap.set('n', 'zr', require('ufo').openFoldsExceptKinds);
            vim.keymap.set('n', 'zm', require('ufo').closeFoldsWith); -- closeAllFolds == closeFoldsWith(0)
            vim.keymap.set('n', 'K', function()
                local winid = require('ufo').peekFoldedLinesUnderCursor()
                if not winid then
                    vim.lsp.buf.hover()
                end
            end);
            provider_selector = function(bufnr, filetype, buftype)
                return {'treesitter', 'indent'}
            end
        })
    end
}
