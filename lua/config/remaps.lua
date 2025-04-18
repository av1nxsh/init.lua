Bind_insert = function(mapping, command)
    vim.keymap.set("i", mapping, command)
end

Bind = function(mapping, command)
    vim.keymap.set("n", mapping, command)
end

Bind_visual = function(mapping, command)
    vim.keymap.set("v", mapping, command)
end


vim.g.leader = ' '

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

Bind_visual("J", ":m '>+1<CR>gv=gv")
Bind_visual("K", ":m '<-2<CR>gv=gv")

Bind('<leader>y', '"+yy')
Bind_visual('<leader>y', '"+y')

