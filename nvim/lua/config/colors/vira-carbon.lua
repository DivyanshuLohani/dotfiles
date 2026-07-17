-- Vira Theme Carbon - Neovim Colorscheme
-- Converted from VS Code theme: Vira-Theme-Carbon
-- Place this file in: ~/.config/nvim/colors/vira_carbon.lua
-- Usage: :colorscheme vira_carbon

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "vira_carbon"
vim.o.background = "dark"
vim.o.termguicolors = true

local hi = vim.api.nvim_set_hl

-- ============================================================
-- COLOR PALETTE (mapped from VS Code theme)
-- ============================================================
-- bg           = #0A0A0A  (editor background)
-- fg           = #D9D9D9  (editor foreground)
-- string       = #a3c679  (green)
-- punctuation  = #6ebad7  (blue)
-- boolean      = #d6808f  (pink/red)
-- number       = #cd775c  (orange)
-- keyword      = #6ebad7  (blue)
-- func         = #6a90d0  (blue-violet)
-- storage      = #a178c4  (purple)
-- modules      = #c85e60  (red, italic)
-- type         = #d5b05f  (yellow)
-- comment      = #45454A  (dark gray, italic)
-- class_var    = #c85e60  (red)
-- css_prop     = #90a9bc  (muted blue)
-- accent       = #80CBC4  (teal)
-- cursor       = #FFCC00  (yellow)
-- line_hl      = #2F3237  (dark gray)
-- selection    = #47474780
-- gutter_fg    = #2F3237
-- gutter_act   = #56575D
-- inactive_fg  = #56575D
-- subtle_bg    = #161718
-- mid_bg       = #212121
-- json0        = #a178c4  (purple)
-- json1        = #d5b05f  (yellow)
-- json2        = #cd775c  (orange)
-- json3        = #c85e60  (red)
-- json4        = #7d5e49  (brown)
-- json5        = #6a90d0  (blue)
-- json6        = #d6808f  (pink)
-- json7        = #a178c4  (purple)
-- json8        = #a3c679  (green)
-- ============================================================

-- -------------------------------------------------------
-- EDITOR CHROME / UI
-- -------------------------------------------------------
hi(0, "Normal", { fg = "#D9D9D9", bg = "#0A0A0A" })
hi(0, "NormalFloat", { fg = "#D9D9D9", bg = "#0A0A0A" })
hi(0, "NormalNC", { fg = "#D9D9D9", bg = "#0A0A0A" })
hi(0, "FloatBorder", { fg = "#FFFFFF", bg = "#0A0A0A" })

hi(0, "Cursor", { fg = "#0A0A0A", bg = "#FFCC00" })
hi(0, "CursorIM", { fg = "#0A0A0A", bg = "#FFCC00" })
hi(0, "CursorLine", { bg = "#2F3237" })
hi(0, "CursorColumn", { bg = "#2F3237" })
hi(0, "CursorLineNr", { fg = "#56575D", bg = "#0A0A0A" })

hi(0, "LineNr", { fg = "#2F3237" })
hi(0, "SignColumn", { fg = "#2F3237", bg = "#0A0A0A" })
hi(0, "FoldColumn", { fg = "#45454A", bg = "#0A0A0A" })
hi(0, "Folded", { fg = "#56575D", bg = "#161718" })

hi(0, "ColorColumn", { bg = "#2F3237" })
hi(0, "VertSplit", { fg = "#D9D9D90f", bg = "#0A0A0A" })
hi(0, "WinSeparator", { fg = "#D9D9D90f", bg = "#0A0A0A" })

hi(0, "StatusLine", { fg = "#494B50", bg = "#0A0A0A" })
hi(0, "StatusLineNC", { fg = "#56575D", bg = "#0A0A0A" })
hi(0, "WinBar", { fg = "#56575D", bg = "#0A0A0A" })
hi(0, "WinBarNC", { fg = "#45454A", bg = "#0A0A0A" })

hi(0, "TabLine", { fg = "#56575D", bg = "#0A0A0A" })
hi(0, "TabLineFill", { bg = "#0A0A0A" })
hi(0, "TabLineSel", { fg = "#FFFFFF", bg = "#0A0A0A", sp = "#80CBC4", underline = true })

hi(0, "Pmenu", { fg = "#D9D9D9", bg = "#0A0A0A" })
hi(0, "PmenuSel", { fg = "#80CBC4", bg = "#2F3237" })
hi(0, "PmenuSbar", { bg = "#161718" })
hi(0, "PmenuThumb", { bg = "#EEFFFF20" })

hi(0, "WildMenu", { fg = "#80CBC4", bg = "#2F3237" })

hi(0, "MatchParen", { fg = "#FFCC00", bg = "#0A0A0A", sp = "#FFCC0080", underline = true })

hi(0, "Search", { fg = "#D9D9D9", bg = "#ffffff26" })
hi(0, "CurSearch", { fg = "#D9D9D9", bg = "#ffffff26", sp = "#80CBC4", underline = true })
hi(0, "IncSearch", { fg = "#D9D9D9", bg = "#ffffff26" })
hi(0, "Substitute", { fg = "#D9D9D9", bg = "#d5b05f4d" })

hi(0, "Visual", { bg = "#47474780" })
hi(0, "VisualNOS", { bg = "#47474780" })
hi(0, "SelectionHighlight", { bg = "#FFCC0033" })

hi(0, "NonText", { fg = "#45454A" })
hi(0, "Whitespace", { fg = "#2F3237" })
hi(0, "SpecialKey", { fg = "#45454A" })
hi(0, "EndOfBuffer", { fg = "#2F3237" })

hi(0, "Title", { fg = "#6ebad7", bold = true })
hi(0, "Question", { fg = "#6ebad7" })
hi(0, "MoreMsg", { fg = "#6ebad7" })
hi(0, "ModeMsg", { fg = "#D9D9D9" })
hi(0, "MsgArea", { fg = "#D9D9D9", bg = "#0A0A0A" })
hi(0, "MsgSeparator", { fg = "#2F3237", bg = "#0A0A0A" })
hi(0, "ErrorMsg", { fg = "#c85e60" })
hi(0, "WarningMsg", { fg = "#d5b05f" })

hi(0, "DiffAdd", { bg = "#a3c6790f" })
hi(0, "DiffChange", { bg = "#6a90d014" })
hi(0, "DiffDelete", { bg = "#c85e6014" })
hi(0, "DiffText", { bg = "#a3c67912" })

hi(0, "SpellBad", { sp = "#c85e60", undercurl = true })
hi(0, "SpellCap", { sp = "#6a90d0", undercurl = true })
hi(0, "SpellLocal", { sp = "#d5b05f", undercurl = true })
hi(0, "SpellRare", { sp = "#a178c4", undercurl = true })

hi(0, "Directory", { fg = "#6a90d0" })

-- -------------------------------------------------------
-- SYNTAX / TOKEN COLORS
-- -------------------------------------------------------
hi(0, "Comment", { fg = "#45454A", italic = true })
hi(0, "SpecialComment", { fg = "#45454A", italic = true })

hi(0, "Constant", { fg = "#D9D9D9" })
hi(0, "String", { fg = "#a3c679" })
hi(0, "Character", { fg = "#D9D9D9" }) -- String Escape
hi(0, "Number", { fg = "#cd775c" })
hi(0, "Float", { fg = "#cd775c" })
hi(0, "Boolean", { fg = "#d6808f" })

hi(0, "Identifier", { fg = "#D9D9D9" }) -- Variable
hi(0, "Function", { fg = "#6a90d0" }) -- Function call / definition

hi(0, "Statement", { fg = "#6ebad7" }) -- Keyword
hi(0, "Conditional", { fg = "#6ebad7" })
hi(0, "Repeat", { fg = "#6ebad7" })
hi(0, "Label", { fg = "#6ebad7" })
hi(0, "Operator", { fg = "#6ebad7" })
hi(0, "Keyword", { fg = "#6ebad7" })
hi(0, "Exception", { fg = "#6ebad7" })

hi(0, "PreProc", { fg = "#a178c4" }) -- Storage/modifier
hi(0, "Include", { fg = "#a178c4" })
hi(0, "Define", { fg = "#a178c4" })
hi(0, "Macro", { fg = "#a178c4" })
hi(0, "PreCondit", { fg = "#a178c4" })

hi(0, "Type", { fg = "#d5b05f" }) -- Types, classes
hi(0, "StorageClass", { fg = "#a178c4" }) -- storage.type / storage.modifier
hi(0, "Structure", { fg = "#d5b05f" })
hi(0, "Typedef", { fg = "#d5b05f" })

hi(0, "Special", { fg = "#6ebad7" }) -- Punctuation/special chars
hi(0, "SpecialChar", { fg = "#D9D9D9" }) -- String escape
hi(0, "Tag", { fg = "#c85e60" }) -- HTML tag inner
hi(0, "Delimiter", { fg = "#6ebad7" }) -- Punctuation
hi(0, "Debug", { fg = "#d6808f" })

hi(0, "Underlined", { fg = "#6a90d0", underline = true })
hi(0, "Ignore", { fg = "#45454A" })
hi(0, "Error", { fg = "#c85e60" })
hi(0, "Todo", { fg = "#FFCC00", bg = "#2F3237", bold = true })

-- -------------------------------------------------------
-- TREESITTER HIGHLIGHTS
-- (follows nvim-treesitter naming @xxx)
-- -------------------------------------------------------

-- Literals
hi(0, "@string", { fg = "#a3c679" })
hi(0, "@string.escape", { fg = "#D9D9D9" })
hi(0, "@string.special", { fg = "#D9D9D9" })
hi(0, "@string.regex", { fg = "#a3c679" })
hi(0, "@number", { fg = "#cd775c" })
hi(0, "@number.float", { fg = "#cd775c" })
hi(0, "@boolean", { fg = "#d6808f" })
hi(0, "@character", { fg = "#D9D9D9" })

-- Comments
hi(0, "@comment", { fg = "#45454A", italic = true })
hi(0, "@comment.documentation", { fg = "#45454A", italic = true })

-- Keywords
hi(0, "@keyword", { fg = "#6ebad7" })
hi(0, "@keyword.function", { fg = "#a178c4" })
hi(0, "@keyword.return", { fg = "#6ebad7" })
hi(0, "@keyword.operator", { fg = "#6ebad7" })
hi(0, "@keyword.import", { fg = "#a178c4" })
hi(0, "@keyword.modifier", { fg = "#a178c4" })
hi(0, "@keyword.other", { fg = "#cd775c" }) -- keyword.other
hi(0, "@conditional", { fg = "#6ebad7" })
hi(0, "@repeat", { fg = "#6ebad7" })
hi(0, "@exception", { fg = "#6ebad7" })
hi(0, "@operator", { fg = "#6ebad7" })
hi(0, "@include", { fg = "#a178c4" })

-- Identifiers / Variables
hi(0, "@variable", { fg = "#D9D9D9" })
hi(0, "@variable.builtin", { fg = "#6ebad7" }) -- this, self, super
hi(0, "@variable.member", { fg = "#c85e60" }) -- class variable / object property
hi(0, "@variable.parameter", { fg = "#D9D9D9" })

-- Functions
hi(0, "@function", { fg = "#6a90d0" })
hi(0, "@function.builtin", { fg = "#6a90d0" })
hi(0, "@function.call", { fg = "#6a90d0" })
hi(0, "@function.method", { fg = "#c85e60" }) -- class method
hi(0, "@function.method.call", { fg = "#6a90d0" })
hi(0, "@constructor", { fg = "#d5b05f" })

-- Types
hi(0, "@type", { fg = "#d5b05f" })
hi(0, "@type.builtin", { fg = "#d5b05f" })
hi(0, "@type.qualifier", { fg = "#a178c4" })
hi(0, "@type.definition", { fg = "#d5b05f" })

-- Namespaces / Modules
hi(0, "@module", { fg = "#c85e60", italic = true })
hi(0, "@namespace", { fg = "#c85e60", italic = true })

-- Properties / Fields
hi(0, "@property", { fg = "#c85e60" }) -- class variable
hi(0, "@field", { fg = "#c85e60" })

-- Punctuation
hi(0, "@punctuation.delimiter", { fg = "#6ebad7" })
hi(0, "@punctuation.bracket", { fg = "#6ebad7" })
hi(0, "@punctuation.special", { fg = "#6ebad7" })

-- Tags (HTML/JSX)
hi(0, "@tag", { fg = "#c85e60" }) -- HTML tag inner
hi(0, "@tag.builtin", { fg = "#c85e60" })
hi(0, "@tag.delimiter", { fg = "#6ebad7" }) -- HTML tag outer / punctuation
hi(0, "@tag.attribute", { fg = "#a178c4" }) -- HTML attribute

-- Markup / Markdown
hi(0, "@markup.heading", { fg = "#6ebad7" })
hi(0, "@markup.link", { fg = "#c85e60" })
hi(0, "@markup.link.url", { fg = "#6a90d0", underline = true })
hi(0, "@markup.link.label", { fg = "#c85e60" })
hi(0, "@markup.list", { fg = "#6ebad7" })
hi(0, "@markup.bold", { fg = "#D9D9D9", bold = true })
hi(0, "@markup.italic", { fg = "#D9D9D9", italic = true })
hi(0, "@markup.strikethrough", { fg = "#45454A", strikethrough = true })
hi(0, "@markup.raw", { fg = "#a3c679" })
hi(0, "@markup.quote", { fg = "#d5b05f", italic = true })

-- Constants
hi(0, "@constant", { fg = "#D9D9D9" })
hi(0, "@constant.builtin", { fg = "#6ebad7" }) -- null, true, false, undefined
hi(0, "@constant.macro", { fg = "#a178c4" })

-- Labels / Special
hi(0, "@label", { fg = "#6ebad7" })
hi(0, "@symbol", { fg = "#6ebad7" }) -- constant.other.symbol

-- CSS-specific via treesitter
hi(0, "@property.css", { fg = "#90a9bc" }) -- CSS properties
hi(0, "@attribute.css", { fg = "#d5b05f" }) -- CSS class .foo
hi(0, "@type.css", { fg = "#d5b05f" }) -- CSS tag selector
hi(0, "@tag.css", { fg = "#d5b05f" })

-- -------------------------------------------------------
-- LSP SEMANTIC TOKENS
-- -------------------------------------------------------
hi(0, "@lsp.type.class", { fg = "#d5b05f" })
hi(0, "@lsp.type.enum", { fg = "#d5b05f" })
hi(0, "@lsp.type.enumMember", { fg = "#D9D9D9" })
hi(0, "@lsp.type.function", { fg = "#6a90d0" })
hi(0, "@lsp.type.interface", { fg = "#d5b05f" })
hi(0, "@lsp.type.keyword", { fg = "#6ebad7" })
hi(0, "@lsp.type.macro", { fg = "#a178c4" })
hi(0, "@lsp.type.method", { fg = "#c85e60" })
hi(0, "@lsp.type.namespace", { fg = "#c85e60", italic = true })
hi(0, "@lsp.type.number", { fg = "#cd775c" })
hi(0, "@lsp.type.operator", { fg = "#6ebad7" })
hi(0, "@lsp.type.parameter", { fg = "#D9D9D9" })
hi(0, "@lsp.type.property", { fg = "#c85e60" })
hi(0, "@lsp.type.string", { fg = "#a3c679" })
hi(0, "@lsp.type.struct", { fg = "#d5b05f" })
hi(0, "@lsp.type.type", { fg = "#d5b05f" })
hi(0, "@lsp.type.typeParameter", { fg = "#d5b05f" })
hi(0, "@lsp.type.variable", { fg = "#D9D9D9" })
hi(0, "@lsp.type.comment", { fg = "#45454A", italic = true })

hi(0, "@lsp.mod.deprecated", { strikethrough = true })
hi(0, "@lsp.mod.readonly", { fg = "#D9D9D9" })
hi(0, "@lsp.mod.static", { fg = "#a178c4" })

-- -------------------------------------------------------
-- DIAGNOSTIC
-- -------------------------------------------------------
hi(0, "DiagnosticError", { fg = "#c85e60" })
hi(0, "DiagnosticWarn", { fg = "#d5b05f" })
hi(0, "DiagnosticInfo", { fg = "#6a90d0" })
hi(0, "DiagnosticHint", { fg = "#6ebad7" })
hi(0, "DiagnosticOk", { fg = "#a3c679" })

hi(0, "DiagnosticUnderlineError", { sp = "#c85e60", undercurl = true })
hi(0, "DiagnosticUnderlineWarn", { sp = "#d5b05f", undercurl = true })
hi(0, "DiagnosticUnderlineInfo", { sp = "#6a90d0", undercurl = true })
hi(0, "DiagnosticUnderlineHint", { sp = "#6ebad7", undercurl = true })

hi(0, "DiagnosticVirtualTextError", { fg = "#c85e60b3" })
hi(0, "DiagnosticVirtualTextWarn", { fg = "#d5b05fb3" })
hi(0, "DiagnosticVirtualTextInfo", { fg = "#6a90d0b3" })
hi(0, "DiagnosticVirtualTextHint", { fg = "#6ebad7" })

hi(0, "DiagnosticSignError", { fg = "#c85e60" })
hi(0, "DiagnosticSignWarn", { fg = "#d5b05f" })
hi(0, "DiagnosticSignInfo", { fg = "#6a90d0" })
hi(0, "DiagnosticSignHint", { fg = "#6ebad7" })

-- -------------------------------------------------------
-- GIT SIGNS (gitsigns.nvim)
-- -------------------------------------------------------
hi(0, "GitSignsAdd", { fg = "#a3c679" }) -- gutter added
hi(0, "GitSignsChange", { fg = "#6a90d0" }) -- gutter modified
hi(0, "GitSignsDelete", { fg = "#c85e60" }) -- gutter deleted
hi(0, "GitSignsAddNr", { fg = "#a3c679" })
hi(0, "GitSignsChangeNr", { fg = "#6a90d0" })
hi(0, "GitSignsDeleteNr", { fg = "#c85e60" })

-- -------------------------------------------------------
-- GIT DECORATION (file explorer / neo-tree)
-- -------------------------------------------------------
hi(0, "NeoTreeGitAdded", { fg = "#a3c679e6" })
hi(0, "NeoTreeGitModified", { fg = "#6a90d0e6" })
hi(0, "NeoTreeGitDeleted", { fg = "#c85e60e6" })
hi(0, "NeoTreeGitConflict", { fg = "#d5b05fe6" })
hi(0, "NeoTreeGitUntracked", { fg = "#a3c679e6" })
hi(0, "NeoTreeGitIgnored", { fg = "#56575D80" })

-- Telescope
hi(0, "TelescopeNormal", { fg = "#D9D9D9", bg = "#0A0A0A" })
hi(0, "TelescopeBorder", { fg = "#FFFFFF10", bg = "#0A0A0A" })
hi(0, "TelescopeMatching", { fg = "#80CBC4" })
hi(0, "TelescopeSelection", { fg = "#80CBC4", bg = "#2F3237" })
hi(0, "TelescopeSelectionCaret", { fg = "#80CBC4" })
hi(0, "TelescopePromptPrefix", { fg = "#80CBC4" })
hi(0, "TelescopeTitle", { fg = "#D9D9D9" })

-- Indent Guides (indent-blankline.nvim)
hi(0, "IndentBlanklineChar", { fg = "#212121" })
hi(0, "IndentBlanklineContextChar", { fg = "#212121" })
hi(0, "IblIndent", { fg = "#212121" })
hi(0, "IblScope", { fg = "#212121" })

-- nvim-cmp
hi(0, "CmpItemAbbr", { fg = "#D9D9D9" })
hi(0, "CmpItemAbbrMatch", { fg = "#80CBC4" })
hi(0, "CmpItemAbbrMatchFuzzy", { fg = "#80CBC4" })
hi(0, "CmpItemAbbrDeprecated", { fg = "#56575D", strikethrough = true })
hi(0, "CmpItemMenu", { fg = "#56575D" })
hi(0, "CmpItemKindDefault", { fg = "#D9D9D9" })
hi(0, "CmpItemKindFunction", { fg = "#6a90d0" })
hi(0, "CmpItemKindMethod", { fg = "#c85e60" })
hi(0, "CmpItemKindClass", { fg = "#d5b05f" })
hi(0, "CmpItemKindInterface", { fg = "#d5b05f" })
hi(0, "CmpItemKindModule", { fg = "#c85e60", italic = true })
hi(0, "CmpItemKindVariable", { fg = "#D9D9D9" })
hi(0, "CmpItemKindField", { fg = "#c85e60" })
hi(0, "CmpItemKindProperty", { fg = "#c85e60" })
hi(0, "CmpItemKindKeyword", { fg = "#6ebad7" })
hi(0, "CmpItemKindSnippet", { fg = "#a178c4" })
hi(0, "CmpItemKindText", { fg = "#D9D9D9" })
hi(0, "CmpItemKindConstant", { fg = "#D9D9D9" })
hi(0, "CmpItemKindOperator", { fg = "#6ebad7" })
hi(0, "CmpItemKindEnum", { fg = "#d5b05f" })
hi(0, "CmpItemKindEnumMember", { fg = "#D9D9D9" })
hi(0, "CmpItemKindTypeParameter", { fg = "#d5b05f" })
hi(0, "CmpItemKindUnit", { fg = "#cd775c" })
hi(0, "CmpItemKindValue", { fg = "#a3c679" })
hi(0, "CmpItemKindReference", { fg = "#6a90d0" })
hi(0, "CmpItemKindFolder", { fg = "#d5b05f" })
hi(0, "CmpItemKindFile", { fg = "#D9D9D9" })
hi(0, "CmpItemKindEvent", { fg = "#d6808f" })
hi(0, "CmpItemKindColor", { fg = "#d5b05f" })
hi(0, "CmpItemKindStruct", { fg = "#d5b05f" })

-- Which-key
hi(0, "WhichKey", { fg = "#80CBC4" })
hi(0, "WhichKeyGroup", { fg = "#6a90d0" })
hi(0, "WhichKeyDesc", { fg = "#D9D9D9" })
hi(0, "WhichKeySeparator", { fg = "#45454A" })
hi(0, "WhichKeyBorder", { fg = "#FFFFFF10" })
hi(0, "WhichKeyFloat", { bg = "#0A0A0A" })

-- -------------------------------------------------------
-- TERMINAL COLORS
-- (approximate mapping to named terminal colors)
-- -------------------------------------------------------
vim.g.terminal_color_0 = "#0A0A0A" -- black
vim.g.terminal_color_1 = "#c85e60" -- red
vim.g.terminal_color_2 = "#a3c679" -- green
vim.g.terminal_color_3 = "#d5b05f" -- yellow
vim.g.terminal_color_4 = "#6a90d0" -- blue
vim.g.terminal_color_5 = "#a178c4" -- magenta
vim.g.terminal_color_6 = "#6ebad7" -- cyan
vim.g.terminal_color_7 = "#D9D9D9" -- white
vim.g.terminal_color_8 = "#45454A" -- bright black
vim.g.terminal_color_9 = "#d6808f" -- bright red
vim.g.terminal_color_10 = "#a3c679" -- bright green
vim.g.terminal_color_11 = "#FFCC00" -- bright yellow (cursor color)
vim.g.terminal_color_12 = "#6ebad7" -- bright blue
vim.g.terminal_color_13 = "#a178c4" -- bright magenta
vim.g.terminal_color_14 = "#80CBC4" -- bright cyan (accent)
vim.g.terminal_color_15 = "#FFFFFF" -- bright white
