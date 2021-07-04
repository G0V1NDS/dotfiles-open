local dap = require 'dap'

local mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

dap.adapters.lldb = {
    type = 'executable',
    attach = {pidProperty = "pid", pidSelect = "ask"},
    command = 'lldb-vscode',
    name = "lldb",
    env = {LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES"}
}

dap.adapters.python = {type = 'executable', command = '/usr/bin/python', args = {'-m', 'debugpy.adapter'}}

dap.adapters.nlua = function(callback, config)
    callback({type = 'server', host = config.host, port = config.port})
end

dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function(_)
            return '/usr/bin/python'
        end
    }
}

dap.configurations.lua = {
    {
        type = 'nlua',
        request = 'attach',
        name = "Attach to running Neovim instance",
        host = function()
            local value = vim.fn.input('Host [127.0.0.1]: ')
            if value ~= "" then return value end
            return '127.0.0.1'
        end,
        port = function()
            local val = tonumber(vim.fn.input('Port: '))
            assert(val, "Please provide a port number")
            return val
        end
    }
}

dap.configurations.rust = {
    {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = function()
            local filter = vim.fn.input('Enter args: ')
            return {filter}
        end,
        -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
        --
        --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
        --
        -- Otherwise you might get the following error:
        --
        --    Error on launch: Failed to attach to the target process
        --
        -- But you should be aware of the implications:
        -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
        runInTerminal = false
    }
}

dap.configurations.c = dap.configurations.rust
dap.configurations.cpp = dap.configurations.rust

-- Enable virutal text, requires theHamsta/nvim-dap-virutal-text
vim.g.dap_virtual_text = true
-- Enable virutal text, requires rcarriga/nvim-dap-ui
require("dapui").setup()
-- Enable virutal text, requires mfussenegger/nvim-dap-python
require('dap-python').setup("~/.pyenv/versions/3.6.5/bin/python")

vim.cmd('command! -nargs=0 DapBreakpoints :lua require\'dap\'.list_breakpoints()')
