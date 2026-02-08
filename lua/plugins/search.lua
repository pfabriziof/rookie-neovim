return {
    {
        'nvim-telescope/telescope.nvim',
        version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        },
        config = function()
            local telescope = require('telescope')
            local builtin = require('telescope.builtin')

            -- Setup telescope
            telescope.setup({
                -- Your telescope configuration here
                defaults = {
                    layout_strategy = 'horizontal',
                    -- ... other options
                },
            })

            -- Load fzf extension
            telescope.load_extension('fzf')

            -- Plugin-recommended keymaps
            vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
            vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
            vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        end,
    },
    {
        'nvim-pack/nvim-spectre',
        keys = {
            {
                "<leader>S",
                '<cmd>lua require("spectre").toggle()<CR>',
                desc = "Toggle Spectre"
            },
            {
                "<leader>sw",
                '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
                desc = "Search current word"
            },
            {
                "<leader>sw",
                '<esc><cmd>lua require("spectre").open_visual()<CR>',
                mode = "v",
                desc = "Search current word"
            },
            {
                "<leader>sp",
                '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
                desc = "Search on current file"
            },
            {
                "<leader>sd",
                '<cmd>lua require("spectre").open({cwd = vim.fn.expand("%:p:h")})<CR>',
                desc = "Search in current directory"
            },
        },
    },
    {
        "folke/trouble.nvim",
        opts = {}, -- for default options, refer to the configuration section for custom setup.
        cmd = "Trouble",
        keys = {
            {
                "<leader>xx",
                "<cmd>Trouble diagnostics toggle<cr>",
                desc = "Diagnostics (Trouble)",
            },
            {
                "<leader>xX",
                "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
                desc = "Buffer Diagnostics (Trouble)",
            },
            {
                "<leader>cs",
                "<cmd>Trouble symbols toggle focus=false<cr>",
                desc = "Symbols (Trouble)",
            },
            {
                "<leader>cl",
                "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
                desc = "LSP Definitions / references / ... (Trouble)",
            },
            {
                "<leader>xL",
                "<cmd>Trouble loclist toggle<cr>",
                desc = "Location List (Trouble)",
            },
            {
                "<leader>xQ",
                "<cmd>Trouble qflist toggle<cr>",
                desc = "Quickfix List (Trouble)",
            },
        },
    },
}
