return {
	"hrsh7th/nvim-cmp",

	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"rafamadriz/friendly-snippets",
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		require("luasnip.loaders.from_vscode").lazy_load()
		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},

			window = {
				completion = cmp.config.window.bordered({
					border = "rounded",

					winhighlight =
					"Normal:Pmenu,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:None",
				}),

				documentation = cmp.config.window.bordered({
					border = "rounded",
				}),
			},

			formatting = {
				fields = {
					"kind",
					"abbr",
					"menu",
				},

				format = function(entry, item)
					local icons = {
						Text = "󰉿",
						Method = "󰆧",
						Function = "󰊕",
						Constructor = "",
						Field = "",
						Variable = "",
						Class = "",
						Interface = "",
						Module = "",
						Property = "",
						Unit = "",
						Value = "",
						Enum = "",
						Keyword = "",
						Snippet = "",
						Color = "",
						File = "",
						Reference = "",
						Folder = "",
						EnumMember = "",
						Constant = "",
						Struct = "",
						Event = "",
						Operator = "",
						TypeParameter = "",
					}

					item.kind =
					    (string.format("%s %s", icons[item.kind], item.kind))

					item.menu = ({
						nvim_lsp = "[LSP]",
						buffer = "[BUF]",
						path = "[PATH]",
						luasnip = "[SNIP]",
					})[entry.source.name]

					return item
				end,
			},

			mapping = cmp.mapping.preset.insert({
				["<C-Space>"] = cmp.mapping.complete(),

				["<CR>"] = cmp.mapping.confirm({
					select = true,
				}),

				["<Tab>"] = cmp.mapping.select_next_item(),

				["<S-Tab>"] = cmp.mapping.select_prev_item(),

				["<C-u>"] = cmp.mapping.scroll_docs(-4),

				["<C-d>"] = cmp.mapping.scroll_docs(4),
			}),

			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "buffer" },
				{ name = "path" },
			},


			experimental = {
				ghost_text = true,
			},
		})
	end,
}
