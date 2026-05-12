require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"clangd",
		"emmet_language_server",
	},
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

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

vim.lsp.enable({
	"lua_ls",
	"ts_ls",
	"clangd",
	"emmet_language_server"
})
