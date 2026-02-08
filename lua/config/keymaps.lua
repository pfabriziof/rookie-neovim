-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Filesystem explore
-- vim.keymap.set("n", "<leader>e", ":Explore<CR>", { desc = 'Explore files with Netrw', noremap = true, silent = true })
vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = 'Explore files with Oil' })

-- Working with files
vim.keymap.set({"n", "i", "v", "s"}, "<C-s>", ":w<CR>", {
    noremap = true,
    silent = true,
    desc = "Save"
})
vim.keymap.set({"n", "i", "v", "s"}, "<C-a>", "ggVG", {
    noremap = true,
    silent = true,
    desc="Select all"
})
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Native Diagnostics
vim.keymap.set("n", "ge", vim.diagnostic.open_float, { desc = 'Open diagnostic list' })
vim.keymap.set("n", "ca", vim.lsp.buf.code_action, { desc = 'Diagnostic code action' })
-- vim.keymap.set("n", "<leader>q", vim.diagnostic.setqflist, { desc = "Open diagnostic Quickfix list" })
-- vim.keymap.set("n", "[q", ":cprev<CR>", { desc = "Previous Quickfix item" })
-- vim.keymap.set("n", "]q", ":cnext<CR>", { desc = "Next Quickfix item" })

-- Definition of variables
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "LSP Definition" })
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "LSP References" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "LSP Hover Documentation" })

-- Change background color
vim.keymap.set("n", "<leader>cb", function ()
    if vim.o.background == "light" then
        vim.o.background = "dark"
    else
        vim.o.background = "light"
    end
end, { desc = 'Switch colorscheme between light/dark' })
