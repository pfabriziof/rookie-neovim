return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")

        -- Setup treesitter
        treesitter.setup({
            ensure_installed = {
                "lua",
                "python",
                "javascript",
                "typescript",
                "html",
                "css",
                -- Add more languages as needed
            },

            sync_install = false,
            auto_install = true,

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },
        })
    end,
}
