return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("bufferline").setup({
				options = {
					diagnostics = "nvim_lsp",
					show_buffer_close_icons = true,
					show_close_icon = false,
				},
			})

			vim.keymap.set("n", "<S-h>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous Buffer" })
			vim.keymap.set("n", "<S-l>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
			vim.keymap.set("n", "<leader>bx", "<cmd>bdelete<CR>", { desc = "Close Buffer" })
			for i = 1, 9 do
				vim.keymap.set("n", "<leader>" .. i,
					"<cmd>BufferLineGoToBuffer " .. i .. "<CR>")
			end
		end,
	},
}
