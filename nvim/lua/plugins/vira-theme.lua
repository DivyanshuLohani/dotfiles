return {
	"LazyVim/LazyVim",
	priority = 1000,

	config = function()
	vim.cmd("hi clear")

	vim.o.termguicolors = true
	vim.o.background = "dark"
	vim.g.colors_name = "vira-carbon"

	local hl = vim.api.nvim_set_hl

	-- Base
	hl(0, "Normal", { fg = "#D9D9D9", bg = "#0A0A0A" })
	hl(0, "CursorLine", { bg = "#161718" })
	hl(0, "LineNr", { fg = "#2F3237" })
	hl(0, "CursorLineNr", { fg = "#56575D" })

	-- Syntax
	hl(0, "Comment", { fg = "#45454A", italic = true })
	hl(0, "String", { fg = "#a3c679" })
	hl(0, "Number", { fg = "#cd775c" })
	hl(0, "Boolean", { fg = "#d6808f" })
	hl(0, "Keyword", { fg = "#6ebad7", italic = true })
	hl(0, "Conditional", { fg = "#6ebad7", italic = true })
	hl(0, "Repeat", { fg = "#6ebad7", italic = true })
	hl(0, "Function", { fg = "#6a90d0" })
	hl(0, "Identifier", { fg = "#D9D9D9" })
	hl(0, "Type", { fg = "#d5b05f" })
	hl(0, "StorageClass", { fg = "#a178c4" })
	hl(0, "Operator", { fg = "#6ebad7" })

	-- UI
	hl(0, "StatusLine", { fg = "#D9D9D9", bg = "#161718" })
	hl(0, "VertSplit", { fg = "#212121" })

	-- fixed alpha colors
	hl(0, "Visual", { bg = "#474747" })
	hl(0, "Search", { bg = "#3A3A3A" })
	hl(0, "IncSearch", { bg = "#80CBC4", fg = "#000000" })

	hl(0, "Pmenu", { fg = "#D9D9D9", bg = "#0A0A0A" })
	hl(0, "PmenuSel", { bg = "#2F3237" })

	-- Diagnostics
	hl(0, "DiagnosticError", { fg = "#c85e60" })
	hl(0, "DiagnosticWarn", { fg = "#d5b05f" })
	hl(0, "DiagnosticInfo", { fg = "#6a90d0" })
	hl(0, "DiagnosticHint", { fg = "#6ebad7" })

	-- Git
	hl(0, "GitSignsAdd", { fg = "#a3c679" })
	hl(0, "GitSignsChange", { fg = "#6a90d0" })
	hl(0, "GitSignsDelete", { fg = "#c85e60" })

	-- Treesitter
	hl(0, "@string", { fg = "#a3c679" })
	hl(0, "@number", { fg = "#cd775c" })
	hl(0, "@boolean", { fg = "#d6808f" })
	hl(0, "@keyword", { fg = "#6ebad7", italic = true })
	hl(0, "@function", { fg = "#6a90d0" })
	hl(0, "@type", { fg = "#d5b05f" })
	hl(0, "@property", { fg = "#c85e60" })
	hl(0, "@variable", { fg = "#D9D9D9" })
	hl(0, "@comment", { fg = "#45454A", italic = true })

	-- Markdown
	hl(0, "@markup.heading", { fg = "#6ebad7" })
	hl(0, "@markup.link", { fg = "#c85e60" })
	hl(0, "@markup.raw", { fg = "#a3c679" })

	-- Telescope
	hl(0, "TelescopeBorder", { fg = "#212121" })
	hl(0, "TelescopeNormal", { bg = "#0A0A0A" })

	-- NvimTree
	hl(0, "NvimTreeNormal", { bg = "#0A0A0A" })

	-- Cursor
	hl(0, "Cursor", { fg = "#000000", bg = "#FFCC00" })
	end,
}
