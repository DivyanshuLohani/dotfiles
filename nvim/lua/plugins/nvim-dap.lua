return {
	{
		"mfussenegger/nvim-dap",

		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},

		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup()

			dap.adapters.gdb = {
				type = "executable",
				command = "/usr/bin/gdb",
				args = { "--interpreter=dap" },
			}

			dap.configurations.cpp = {
				{
					name = "Debug RPG",
					type = "gdb",
					request = "launch",

					program = function()
						return vim.fn.getcwd() .. "/build/rpg-game/rpg-game"
					end,

					cwd = "${workspaceFolder}/build/rpg-game/rpg-game",

					stopAtBeginningOfMainSubprogram = false,

					setupCommands = {
						{
							text = "-enable-pretty-printing",
							description = "Enable pretty printing",
							ignoreFailures = true,
						},
					},

					before = function()
						vim.cmd("silent !cmake --build build")
					end,
				},
			}

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end

			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end

			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end

			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set("n", "<F5>", dap.continue)
			vim.keymap.set("n", "<F10>", dap.step_over)
			vim.keymap.set("n", "<F11>", dap.step_into)
			vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
		end,
	},
}
