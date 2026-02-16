# rookie-neovim

A custom Neovim configuration focused on full-stack web development (JavaScript/TypeScript), Python development, LaTeX document editing, Godot game development, and infrastructure as code (Terraform). Features LSP support, advanced search capabilities, Git integration, and a modern UI.

## System Requirements

- **OS:** Arch Linux  
- **Neovim:** 0.11+

### Required Packages (Arch Linux)
```bash
# Core dependencies
sudo pacman -S --needed neovim git gcc make ripgrep fd

# LaTeX support
sudo pacman -S --needed texlive-basic texlive-latexrecommended texlive-fontsrecommended \
               texlive-bin texlive-binextra texlive-latexextra texlive-mathscience \
               biber zathura zathura-pdf-mupdf

# Optional: Language-specific tools
sudo pacman -S nodejs npm python python-pip rust
```

## Plugin Manager

[**lazy.nvim**](https://github.com/folke/lazy.nvim) - Fast and modern plugin manager with automatic updates

## Installed Plugins

### LSP & Completion
- [**mason.nvim**](https://github.com/williamboman/mason.nvim) - LSP server installer
- [**mason-lspconfig.nvim**](https://github.com/williamboman/mason-lspconfig.nvim) - Bridge between Mason and nvim-lspconfig
- [**nvim-lspconfig**](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [**nvim-cmp**](https://github.com/hrsh7th/nvim-cmp) - Autocompletion engine
- [**cmp-nvim-lsp**](https://github.com/hrsh7th/cmp-nvim-lsp) - LSP completion source
- [**cmp-buffer**](https://github.com/hrsh7th/cmp-buffer) - Buffer completion source
- [**cmp-path**](https://github.com/hrsh7th/cmp-path) - Path completion source

### Language Servers (Auto-installed via Mason)
- `lua_ls` - Lua
- `bashls` - Bash
- `eslint` - JavaScript/TypeScript linting
- `rust_analyzer` - Rust
- `terraformls` - Terraform
- `ruff` - Python linter
- `basedpyright` - Python type checking
- `gdscript` - Godot GDScript
- `texlab` - LaTeX

### Syntax & Parsing
- [**nvim-treesitter**](https://github.com/nvim-treesitter/nvim-treesitter) - Advanced syntax highlighting and parsing
  - Supported: Lua, Bash, Python, JavaScript, TypeScript, HTML, CSS, GDScript, Terraform, LaTeX

### Search & Navigation
- [**telescope.nvim**](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder for files, buffers, and more
- [**telescope-fzf-native.nvim**](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - FZF sorter for Telescope
- [**nvim-spectre**](https://github.com/nvim-pack/nvim-spectre) - Search and replace across project
- [**trouble.nvim**](https://github.com/folke/trouble.nvim) - Diagnostics and quickfix list

### Git Integration
- [**neogit**](https://github.com/NeogitOrg/neogit) - Magit-like Git interface
- [**gitsigns.nvim**](https://github.com/lewis6991/gitsigns.nvim) - Git decorations and hunks
- [**diffview.nvim**](https://github.com/sindrets/diffview.nvim) - Git diff viewer

### UI & Editor Enhancement
- [**oil.nvim**](https://github.com/stevearc/oil.nvim) - File explorer as a buffer
- [**nvim-autopairs**](https://github.com/windwp/nvim-autopairs) - Auto-close brackets and quotes
- [**which-key.nvim**](https://github.com/folke/which-key.nvim) - Keybinding hints
- [**mini.icons**](https://github.com/echasnovski/mini.icons) - Icon support
- [**oklch-color-picker.nvim**](https://github.com/eero-lehtinen/oklch-color-picker.nvim) - Color picker for web development

### LaTeX
- [**vimtex**](https://github.com/lervag/vimtex) - Comprehensive LaTeX support with Zathura PDF viewer

### Colorschemes
- [**tokyonight.nvim**](https://github.com/folke/tokyonight.nvim) - Tokyo Night theme
- [**flexoki**](https://github.com/kepano/flexoki-neovim) - Flexoki theme (active)

### Utilities
- [**plenary.nvim**](https://github.com/nvim-lua/plenary.nvim) - Lua utility functions (dependency)

## File Structure

```
~/.config/nvim/
├── init.lua                # Main entry point
├── lazy-lock.json          # Plugin version lock file
├── lua/
│   ├── config/
│   │   ├── autocmds.lua    # Auto commands
│   │   ├── keymaps.lua     # Key mappings
│   │   ├── lazy.lua        # Plugin manager setup
│   │   └── options.lua     # Neovim options
│   └── plugins/            # Plugin configurations
├── lsp/                    # LSP server configs
└── ftplugin/               # Filetype-specific settings
```

## Installation

```bash
# Clone this repository
git clone <your-repo-url> ~/.config/nvim

# Launch Neovim (plugins will auto-install)
nvim
```

## Key Features

- **LSP-powered development** for multiple languages
- **Fuzzy search** with Telescope
- **Git workflow** with Neogit and Gitsigns
- **LaTeX editing** with live PDF preview
- **Web development** with color picker and ESLint
- **Modern UI** with file explorer and diagnostics
- **Auto-completion** with context-aware suggestions
