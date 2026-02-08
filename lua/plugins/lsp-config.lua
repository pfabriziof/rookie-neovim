return {
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "mason-org/mason.nvim" },
    },
}
