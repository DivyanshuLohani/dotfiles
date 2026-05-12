-- Global Settings
vim.g.mapleader = " "
vim.opt.number = true
--vim.opt.relativenumber = true
vim.keymap.set("n", "<C-s>", ":w<Enter>")
vim.keymap.set("i", "<C-s>", "<C-o>:w<Enter>")

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({
		lsp_fallback = true,
	})
end)


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"neovim/nvim-lspconfig",
	},
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
	},
	{
		"williamboman/mason.nvim",
	},

	{
		"williamboman/mason-lspconfig.nvim",
	},
	{
		"stevearc/conform.nvim",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
	},
	{
		"vague2k/vague.nvim",
	},

	{
		"hrsh7th/nvim-cmp",
	},

	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"rachartier/tiny-inline-diagnostic.nvim",
	},
	{
		"windwp/nvim-autopairs",
	},
	{
		"kylechui/nvim-surround"
	}
})
require("vague").setup({
})
vim.cmd.colorscheme("vague")
require("lsp")
require("autopairs-config")
require("telescope-config")
require("cmp-config")
-- Will be sent to its own file
require("tiny-inline-diagnostic").setup()
--require("diagnostic-config")
require("conform-config")
require("yazi-config")
