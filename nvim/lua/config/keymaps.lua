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

-- Normal Mode: Move single line
vim.keymap.set('n', '<A-Down>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', { silent = true })
vim.keymap.set('n', '<A-Up>', ':m .-2<CR>==', { silent = true })
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', { silent = true })

-- Visual Mode: Move selected block
vim.keymap.set('v', '<A-Down>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-Up>', ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", { silent = true })
