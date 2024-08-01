vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("x", "<leader>p", '"_dp')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>s|", "<C-w>v")        -- split window vertically
vim.keymap.set("n", "<leader>s-", "<C-w>s")        -- split window horizontally
vim.keymap.set("n", "<leader>s=", "<C-w>=")        -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>")     --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>")     --  go to previous tab

vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>")

vim.keymap.set("n", "<leader>fc", "<cmd>clang++ -Wall -std=c++11 main.cpp -o main && ./main<cr>")
