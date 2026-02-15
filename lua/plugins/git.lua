return {
    {
        "NeogitOrg/neogit",
        lazy = true,
        dependencies = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
        },
        cmd = "Neogit",
        keys = {
            { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            on_attach = function(bufnr)
                local gitsigns = require('gitsigns')

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map('n', ']c', function()
                    if vim.wo.diff then
                        vim.cmd.normal({']c', bang = true})
                    else
                        gitsigns.nav_hunk('next')
                    end
                end, { desc = 'Next Git hunk' })

                map('n', '[c', function()
                    if vim.wo.diff then
                        vim.cmd.normal({'[c', bang = true})
                    else
                        gitsigns.nav_hunk('prev')
                    end
                end, { desc = 'Previous Git hunk' })

                -- Actions
                map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Stage hunk' })
                map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Reset hunk' })

                map('v', '<leader>hs', function()
                    gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
                end, { desc = 'Stage selected lines' })

                map('v', '<leader>hr', function()
                    gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })
                end, { desc = 'Reset selected lines' })

                map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Stage entire buffer' })
                map('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'Reset entire buffer' })
                map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Preview hunk (float)' })
                map('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc = 'Preview hunk (inline)' })

                map('n', '<leader>hb', function()
                    gitsigns.blame_line({ full = true })
                end, { desc = 'Blame line (detailed)' })

                map('n', '<leader>hd', gitsigns.diffthis, { desc = 'Diff against index' })

                map('n', '<leader>hD', function()
                    gitsigns.diffthis('~')
                end, { desc = 'Diff against last commit' })

                map('n', '<leader>hQ', function() gitsigns.setqflist('all') end, { desc = 'Send all hunks to Quickfix' })
                map('n', '<leader>hq', gitsigns.setqflist, { desc = 'Send buffer hunks to Quickfix' })

                -- Toggles
                map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = 'Toggle line blame' })
                map('n', '<leader>tw', gitsigns.toggle_word_diff, { desc = 'Toggle word diff' })

                -- Text object
                -- This allows you to do things like 'dih' (delete inside hunk) or 'vih' (visual select hunk)
                map({'o', 'x'}, 'ih', gitsigns.select_hunk, { desc = 'Select Git hunk' })
            end

        }
    }
}
