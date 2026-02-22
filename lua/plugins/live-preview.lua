return {
    'brianhuster/live-preview.nvim',
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    keys = {
        { "<leader>ls", "<cmd>LivePreview start<cr>", desc = "Start LivePreview for .md, .html or .svg" },
        { "<leader>lc", "<cmd>LivePreview close<cr>", desc = "Close LivePreview connection" }
    },
}
