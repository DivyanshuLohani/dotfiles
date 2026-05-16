return {
	"mikavilpas/yazi.nvim",
	event = "VeryLazy",
	config = function()
		require("yazi").setup()

		vim.keymap.set("n", "<leader>e", "<cmd>Yazi<CR>")
	end,
}
