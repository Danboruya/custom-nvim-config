local status_ok, flutter_tools = pcall(require, "flutter-tools")
if not status_ok then
  return
end


local M = {}

function M.setup()
  flutter_tools.setup {
    ui = {
      border = "rounded",
      notification_style = 'plugin',
    },
    -- debugger = {
    --   enabled = true,
    --   run_via_dap = true,
    -- },
    outline = {
      auto_open = false
    },
    decorations = {
      statusline = {
        device = true,
        app_version = true
      },
    },
    widget_guides = {
      enabled = true,
    },
    dev_log = {
      enabled = false,
      open_cmd = "tabedit"
    },
    closeing_tags = {
      highlight = "ErrorMessage",
      prefix = "//",
      enabled = true,
    },
    lsp = {
      color = {
        enabled = true,
        background = true,
        virtual_text = true,
      },
      settings = {
        showTodos = true,
        completeFunctionCalls = true,
        renameFilesWithClasses = "prompt",
        enableSnippets = true,
      },
      on_attach = require("config.lsp").on_attach,
      capabilities = require("config.lsp").capabilities,
    },
  }
end

return M
