return {
  settings = {
    pylsp = {
      plugins = {
        -- Turn OFF everything Ruff already does
        pycodestyle = { enabled = false },
        pyflakes = { enabled = false },
        mccabe = { enabled = false },
        pylint = { enabled = false },
        autopep8 = { enabled = false },
        yapf = { enabled = false },
        -- Keep ONLY the navigation/intelligence
        jedi_definition = { enabled = true, follow_imports = true },
        jedi_hover = { enabled = true },
        jedi_references = { enabled = true },
      }
    }
  }
}
