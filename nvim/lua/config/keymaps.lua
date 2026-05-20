local keymap = vim.keymap.set

-- Save
keymap("n", "<C-s>", ":w<CR>")
keymap("i", "<C-s>", "<Esc>:w<CR>")

-- Undo
keymap("i", "<C-z>", "<Esc>ui")
keymap("n", "<C-z>", "u")

-- Select all
keymap("n", "<C-a>", "ggVG")

-- Copy to clipboard
keymap("v", "<C-c>", '"+y')

-- Format
keymap("n", "<leader>f", function()
	require("conform").format({
		lsp_fallback = true,
	})
end)

-- Buffer navigation
keymap("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>")
keymap("n", "<C-S-Tab>", "<cmd>BufferLineCyclePrev<CR>")

-- Close buffer
keymap("n", "<C-w>", "<cmd>bdelete<CR>")


-- Comment Toggle
vim.keymap.set("n", "<C-_>", "gcc", { remap = true })
vim.keymap.set("v", "<C-_>", "gc", { remap = true })
