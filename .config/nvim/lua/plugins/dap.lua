return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.launch.dapui_config = function() dapui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
    dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

    dap.adapters.codelldb = {
      type = 'server',
      port = "${port}",
      executable = {
        command = '/Users/mukeshkannan/.config/nvim/codelldb-vscode-extension/extension/adapter/codelldb',
        args = {"--port", "${port}"},
      }
    }

    dap.configurations.cpp = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        host = "arm64",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
      },
    }

    dap.configurations.c = dap.configurations.cpp
  dap.configurations.rust = dap.configurations.cpp

    vim.keymap.set("n", "<leader>dc", function() dap.continue() end)
    vim.keymap.set("n", "<leader>dt", function() dap.toggle_breakpoint() end)
  end,
}
