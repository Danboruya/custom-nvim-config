return  {
  settings = {
    pylsp = {
      plugins = {
        pylint = {
          enabled = true,
          executable = "pylint"
        },
        pyflakes = {
          enabled = false
        },
        pycodestyle = {
          enabled = false
        },
        jedi_completion = {
          enabled = true,
          fuzzy = true
        },
        pyls_isort = {
          enabled = true
        },
        pylsp_mypy = {
          enabled = true
        },
      },
    },
  },
  flags = {
    debounce_text_changes = 200,
  },
}
