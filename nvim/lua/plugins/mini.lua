return {
	"echasnovski/mini.notify",
	config = function()
		require("mini.notify").setup({
			content = {
				format = function(notif)
					return notif.msg
				end,
			},
			window = {
				config = function()
					return {
						title = "",
						anchor = "SE",
						row = vim.o.lines - 2,
						col = vim.o.columns,
						border = "none",
					}
				end,
			},
		})
	end,
}
