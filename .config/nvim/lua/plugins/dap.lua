return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")
    local cwd = vim.fn.getcwd()

    dap.configurations.python = {
      {
        name = "Aerial",
        type = "python",
        python = vim.fn.getcwd() .. "/.venv/bin/python",
        request = "launch",
        program = cwd .. "/path/to/the/main/script.py",
        cwd = cwd,
        console = "integratedTerminal",
      },
      {
        name = "Resolver",
        type = "python",
        python = vim.fn.getcwd() .. "/.venv/bin/python",
        request = "launch",
        program = cwd .. "/path/to/the/main/script.py",
        cwd = cwd,
        console = "integratedTerminal",
      },
    }
  end,
}
