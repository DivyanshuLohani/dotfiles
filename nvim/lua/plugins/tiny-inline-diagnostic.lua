return {
	"rachartier/tiny-inline-diagnostic.nvim",

	config = function()
		require("tiny-inline-diagnostic").setup({
			preset = "modern",

			transparent_bg = true,

			transparent_cursorline = true,

			signs = {
				left = "",
				right = "",
				diag = "●",
				arrow = "    ",
				up_arrow = "    ",
				vertical = " │",
				vertical_end = " └",
			},

			hi = {
				error = "DiagnosticError",
				warn = "DiagnosticWarn",
				info = "DiagnosticInfo",
				hint = "DiagnosticHint",
			},

			options = {
				show_source = false,

				use_icons_from_diagnostic = true,

				set_arrow_to_diag_color = true,

				multilines = false,

				show_all_diags_on_cursorline = false,

				enable_on_insert = false,

				enable_on_select = false,

				overflow = {
					mode = "wrap",
				},
			},
		})

		vim.diagnostic.config({
			virtual_text = false,
		})
	end,
}
