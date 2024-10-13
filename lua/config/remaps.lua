Bind_insert= function (mapping, command)
    vim.keymap.set("i", mapping, command)
end

Bind= function (mapping, command)
    vim.keymap.set("n", mapping, command)
end

Bind_visual= function (mapping, command)
    vim.keymap.set("v", mapping, command)
end


vim.g.leader = ' '

Bind_insert("<leader><leader>", "<Esc>")
Bind("qq", function()
    vim.cmd.q()
end)
Bind("<leader><leader>", function()
    vim.cmd("Rex")
end)
Bind("<leader>v", function ()
    vim.cmd("Vex")
    vim.cmd('wincmd =')
end)
Bind("<leader>s", function ()
    vim.cmd("Sex")
    vim.cmd('wincmd =')
end)
Bind("<leader>",":")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

Bind_visual("J", ":m '>+1<CR>gv=gv")
Bind_visual("K", ":m '<-2<CR>gv=gv")

Bind('<leader>y', '"+yy')
Bind_visual('<leader>y', '"+y')

-- TODO: Add split and navigation shortcuts
-- https://github.com/folke/todo-comments.nvim?tab=readme-ov-file
--
-- INFO: netrw remaps {disabled}
--
-- Bind("<leader>ht", function ()
--     vim.cmd.w()
--     vim.cmd.Ex()
-- end)
-- Bind("", function ()
--     vim.cmd.Ex()
-- end)
--
-- Bind("<leader>hh", function ()
--     vim.cmd.Ex()
-- end)
--
-- Bind("<leader>hs", function ()
--     vim.cmd.Sex()
-- end)
--
