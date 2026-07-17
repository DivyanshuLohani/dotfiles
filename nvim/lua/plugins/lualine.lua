return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("lualine").setup({
			options = {
				theme = "auto",
				globalstatus = true,
				lualine_b = { "branch", "diff", "diagnostics" },
			},
		})
	end,
}
