vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<F2>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

