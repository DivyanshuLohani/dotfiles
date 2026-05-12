-- Global Settings
vim.g.mapleader = " "
vim.opt.number = true
--vim.opt.relativenumber = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
require("lsp")
require("autopairs-config")
require("telescope-config")
require("cmp-config")
-- Will be sent to its own file
require("tiny-inline-diagnostic").setup()
--require("diagnostic-config")
require("conform-config")
require("yazi-config")


vim.keymap.set("n", "<C-s>", ":w<Enter>")
vim.keymap.set("i", "<C-s>", "<C-o>:w<Enter>")
vim.keymap.set("n", "<leader>f", function()
	require("conform").format({
		lsp_fallback = true,
	})
end)
vim.keymap.set('n', '<C-a>', 'ggVG')
vim.keymap.set('v', '<C-c>', '"+y')
-- Next buffer
vim.keymap.set("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>")

-- Previous buffer
vim.keymap.set("n", "<C-S-Tab>", "<cmd>BufferLineCyclePrev<CR>")

-- Close buffer
vim.keymap.set("n", "<C-w>", "<cmd>bdelete<CR>")

-- Color scheme
-- vim.g.material_style = "darker"
