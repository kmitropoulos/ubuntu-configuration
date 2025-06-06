vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>P", "\"+p")
vim.keymap.set("v", "<leader>P", "\"+p")

vim.keymap.set("n", "<C-w>s", "<C-w>s<ESC><C-w>j", { noremap = true })
vim.keymap.set("n", "<C-w>v", "<C-w>v<ESC><C-w>l", { noremap = true })

-- vim.keymap.set("i", "[", "[]<ESC>ha", { noremap = true})
-- vim.keymap.set("i", "{", "{}<ESC>ha", { noremap = true})
-- vim.keymap.set("i", "(", "()<ESC>ha", { noremap = true})
-- vim.keymap.set("i", "\"", "\"\"<ESC>ha", { noremap = true})
-- vim.keymap.set("i", "'", "''<ESC>ha", { noremap = true})
-- vim.keymap.set("i", "<", "<><ESC>ha", { noremap = true})

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<C-l>", "<cmd>noh<CR>")

vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float)

