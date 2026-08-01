return {
	"Civitasv/cmake-tools.nvim",
	opts = {
		cmake_build_directory = "build",
		cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=ON" },
		cmake_dap_configuration = {
			name = "cpp",
			type = "codelldb",
			request = "launch",
			stopOnEntry = false,
			runInTerminal = true,
		},
	},
	config = function(_, opts)
		local cmake = require("cmake-tools")
		cmake.setup(opts)

		-- Keymaps for CMake-Tools
		vim.keymap.set("n", "<leader>cg", "<cmd>CMakeGenerate<CR>", { desc = "CMake: Generate" })
		vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<CR>", { desc = "CMake: Build" })
		vim.keymap.set("n", "<leader>cr", "<cmd>CMakeRun<CR>", { desc = "CMake: Run" })
		vim.keymap.set("n", "<leader>cd", "<cmd>CMakeDebug<CR>", { desc = "CMake: Debug" })
		vim.keymap.set("n", "<leader>cs", "<cmd>CMakeSelectTarget<CR>", { desc = "CMake: Select Target" })
		vim.keymap.set("n", "<leader>ct", "<cmd>CMakeSelectBuildType<CR>", { desc = "CMake: Select Build Type" })
	end,
}
