return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",

	opts = {},

	config = function(_, opts)
		require("ibl").setup(opts)

		vim.api.nvim_set_hl(0, "IblIndent", {
			fg = "#3b4261",
		})

		vim.api.nvim_set_hl(0, "IblScope", {
			fg = "#7aa2f7",
		})
	end,
}
