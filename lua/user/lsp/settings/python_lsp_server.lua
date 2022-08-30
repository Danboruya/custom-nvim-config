return {
  configurationSources = {"pylint"},
  plugins = {
    pylint = { enabled = true },
    flake8 = { enabled = false },
    pycodestyle = { enabled = false },
    pyflakes = { enabled = false },
  }
}
