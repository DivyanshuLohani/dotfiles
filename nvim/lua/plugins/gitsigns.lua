return {
	"lewis6991/gitsigns.nvim",

	config = function()
		require("gitsigns").setup({
			current_line_blame = true,

			current_line_blame_opts = {
				delay = 2000,
				virt_text_priority = 1,
			},

			current_line_blame_formatter =
			"<author>, <author_time:%R> • <summary>",

			signs = {
				add = { text = "│" },
				change = { text = "│" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		})

		vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>")
		vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>")
		vim.keymap.set("n", "]c", "<cmd>Gitsigns next_hunk<CR>")
		vim.keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<CR>")
	end,
}
