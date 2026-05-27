return {
	"hrsh7th/nvim-cmp",

	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"onsails/lspkind.nvim",
		"lukas-reineke/headlines.nvim",
		"MeanderingProgrammer/render-markdown.nvim",
		"rafamadriz/friendly-snippets",
	},

	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")
		local lspkind = require('lspkind')

		require("render-markdown").setup()

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
				format = lspkind.cmp_format({
					mode = 'symbol', -- show only symbol annotations
					preset = 'codicons', -- use vscode-style codicons
					maxwidth = 50,
				})
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
