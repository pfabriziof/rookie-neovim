return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")
        treesitter.install{
            "lua",
            "bash",
            "python",
            "javascript",
            "typescript",
            "html",
            "css",
            "gdscript",
            "gdshader",
            "godot_resource",
            "terraform",
            -- Add more languages as needed
        }
        treesitter.setup({
            sync_install = false,
            auto_install = false,

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },
            -- disable for files bigger than 100 KB
            disable = function(lang, buf)
                local max_filesize = 100 * 1024 -- 100 KB
                local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return true
                end
            end
        })

    end
}
