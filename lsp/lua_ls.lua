return {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }  -- Recognize 'vim' as a global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      telemetry = {
        enable = false,
      },
    },
  },
}
