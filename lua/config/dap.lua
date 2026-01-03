local dap = require("dap")

dap.adapters.gdb = {
	type = "executable",
	command = "gdb",
	args = { "--interpreter=dap" },
}

dap.defaults.fallback = {
	cwd = "${workspaceFolder}",
	setupCommands = {
		{
			text = "-enable-pretty-printing",
			ignoreFailures = true,
		},
	},
	--console = "integratedTerminal",
}

dap.configurations.c = {
	{
		name = "Launch",
		type = "gdb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
	},
	{
		name = "Attach (pick process)",
		type = "gdb",
		request = "attach",
		pid = require("dap.utils").pick_process,
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
	},
	{
		name = "Attach to gdbserver :1234",
		type = "gdb",
		request = "attach",
		target = "localhost:1234",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
	},
}
dap.configurations.asm = dap.configurations.c
dap.configurations.cpp = dap.configurations.c

local dap_ui = require "dapui"
dap_ui.setup {}
