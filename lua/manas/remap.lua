vim.g.mapleader = '\\'

-- Open file explorer
vim.keymap.set("n", "<leader>f", function() vim.cmd.Ex() end, { noremap = true, silent = true })

-- Move code blocks up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Remap existing maps
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-d>", "$", { noremap = true, silent = true })
vim.keymap.set("n", "<C-f>", "_", { noremap = true, silent = true })

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Format buffer with LSP
vim.keymap.set("n", "<leader>c", function()
    vim.lsp.buf.format()
end)

-- Format buffer with null-ls
vim.keymap.set('n', '<F3>', function() vim.lsp.buf.format({ async = true }) end, { noremap = true, silent = true })
-- search & replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/gi<left><left><left>]])

