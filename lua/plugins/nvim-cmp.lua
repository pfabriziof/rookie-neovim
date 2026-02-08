return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  config = function()
    local cmp = require("cmp")

    -- Enable LSP capabilities
    vim.lsp.config("*", {
      capabilities = require("cmp_nvim_lsp").default_capabilities()
    })

    -- Configure nvim-cmp
    cmp.setup({
      sources = {
        { name = "nvim_lsp" },  -- LSP completions
        { name = "buffer" },    -- Buffer completions
        { name = "path" },      -- Path completions
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),      -- Trigger completion
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        ["<C-n>"] = cmp.mapping.select_next_item(),  -- Next item
        ["<C-p>"] = cmp.mapping.select_prev_item(),  -- Previous item
      }),
    })
  end,
}
