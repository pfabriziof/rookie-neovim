return {
  -- The binary name installed by Mason
  cmd = { "vscode-eslint-language-server", "--stdio" },

  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "vue",
    "svelte"
  },

  -- This tells Neovim WHERE the project starts.
  -- If none of these files exist, the LSP won't start.
  root_markers = {
    ".eslintrc.js",
    ".eslintrc.cjs",
    ".eslintrc.yaml",
    ".eslintrc.yml",
    ".eslintrc.json",
    "eslint.config.js",
    "package.json",
  },

  settings = {
    workingDirectory = { mode = "location" },
    packageManager = "npm",
  },

  -- Auto-Fix: Run ESLint fix on save
  -- on_attach = function(client, bufnr)
  --   vim.api.nvim_create_autocmd("BufWritePre", {
  --     buffer = bufnr,
  --     command = "EslintFixAll",
  --   })
  -- end,
}
