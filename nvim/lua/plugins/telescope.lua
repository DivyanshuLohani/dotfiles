return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	config = function()
		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

		vim.keymap.set("n", "gd", builtin.lsp_definitions, {})
		vim.keymap.set("n", "gr", builtin.lsp_references, {})
		vim.keymap.set("n", "gi", builtin.lsp_implementations, {})
		vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {})
		vim.keymap.set("n", "<leader>ws", builtin.lsp_workspace_symbols, {})
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		vim.keymap.set("i", "<C-p>", builtin.find_files, {})
	end,
}
