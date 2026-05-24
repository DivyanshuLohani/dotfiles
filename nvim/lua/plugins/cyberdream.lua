return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			require("cyberdream").setup({
				transparent = true,

				italic_comments = true,
				hide_fillchars = true,
				borderless_pickers = false,
			})

			vim.cmd.colorscheme("cyberdream")
			vim.api.nvim_set_hl(0, "Pmenu", {
				bg = "#16181a",
			})

			vim.api.nvim_set_hl(0, "PmenuSel", {
				bg = "#2c313c",
			})

			vim.api.nvim_set_hl(0, "FloatBorder", {
				fg = "#5ea1ff",
			})
		end,
	},
}
