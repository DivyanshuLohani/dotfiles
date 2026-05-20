return {
	"williamboman/mason.nvim",

	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
	},

	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"clangd",
				"emmet_language_server",
				"tailwindcss",
				"html",
				"cssls",
			}
		})

		local capabilities =
		    require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
		})

		vim.lsp.config("ts_ls", {
			capabilities = capabilities,
		})

		vim.lsp.config("clangd", {
			capabilities = capabilities,
		})

		vim.lsp.config("emmet_language_server", {
			capabilities = capabilities,

			filetypes = {
				"html",
				"css",
				"javascriptreact",
				"typescriptreact",
			},
		})
		vim.lsp.config("tailwindcss", {
			capabilities = capabilities,

			filetypes = {
				"html",
				"css",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"tsx",
			},
		})

		vim.lsp.enable({
			"lua_ls",
			"ts_ls",
			"clangd",
			"emmet_language_server",
			"tailwindcss",
		})
	end,
}
