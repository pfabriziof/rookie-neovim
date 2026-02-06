local opt = vim.opt

opt.hidden = true           -- Allow switching buffers without saving (essential for multi-file workflow)
opt.filetype = "on"         -- Enable filetype detection for syntax and plugins
opt.relativenumber = true   -- Allows you to see exactly how many lines to jump (e.g., "12j" to go down)
opt.cursorline = true       -- Visually track your horizontal position with a highlight line
opt.scrolloff = 10          -- Keeps your cursor centered; prevents it from hitting the top/bottom edges
opt.clipboard = "unnamedplus" -- Sync Neovim 'y' and 'p' with Ctrl+C and Ctrl+V (System Clipboard)
opt.termguicolors = true    -- Enables 24-bit RGB colors (required for modern themes like Catppuccin)
opt.ignorecase = true       -- Search ignores case by default...
opt.smartcase = true        -- ...until you type a Capital Letter, then it becomes case-sensitive
opt.tabstop = 4             -- Number of visual spaces a <Tab> character represents
opt.shiftwidth = 4          -- Number of spaces used for each level of (re)indentation
opt.expandtab = true        -- Convert all <Tab> presses into actual space characters

