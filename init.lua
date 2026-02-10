require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")

vim.cmd[[colorscheme flexoki]]

-- Enable LSP plugins
vim.lsp.enable({
    "lua_ls",
    "bashls",
    "eslint",
    "rust_analyzer",
    "terraformls",
    "ruff",
    "basedpyright",
    "gdscript",
})
