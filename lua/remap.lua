vim.g.mapleader = " "
vim.keymap.set("n","<leader>pv", vim.cmd.Ex)


vim.keymap.set('t', "<leader>tt", "exit<Enter>")
vim.keymap.set('t', "<leader>te", :"<C-\><C-n>")

vim.keymap.set('v','K', vim.cmd(":m '<-2<CR>gv=gv"))
vim.keymap.set('v','J', vim.cmd(":m '>+1<CR>gv=gv"))
