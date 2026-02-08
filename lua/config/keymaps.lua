-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>e", ":Explore<CR>", { noremap = true, silent = true })
vim.keymap.set({"n", "i", "v", "s"}, "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set({"n", "i", "v", "s"}, "<C-a>", "ggVG", { noremap = true, silent = true })
