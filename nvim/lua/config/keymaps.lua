local function keymap(mode, combo, cmd, desc)
	vim.keymap.set(mode, combo, cmd, {
		desc = desc,
		silent = true,
	})
end

-- Save
keymap("n", "<C-s>", "<cmd>w<CR>", "Save file")
keymap("n", "<leader>W", "<cmd>noautocmd w<CR>", "Save without formatting")
keymap("i", "<C-s>", "<Esc><cmd>w<CR>", "Save file")

-- Undo
keymap("i", "<C-z>", "<Esc>ui", "Undo")
keymap("n", "<C-z>", "u", "Undo")

-- Select all
keymap("n", "<C-a>", "ggVG", "Select all")

-- Copy to clipboard
keymap("v", "<C-c>", '"+y', "Copy to clipboard")

-- Format
keymap("n", "<leader>f", function()
	require("conform").format({
		lsp_fallback = true,
	})
end, "Format file")

keymap("n", "<S-A-f>", function()
	require("conform").format()
end, "Format on demand")

-- Buffer navigation
keymap("n", "<C-Tab>", "<cmd>BufferLineCycleNext<CR>", "Next buffer")
keymap("n", "<C-S-Tab>", "<cmd>BufferLineCyclePrev<CR>", "Previous buffer")

-- Comment toggle
keymap("n", "<C-_>", "gcc", "Toggle comment")
keymap("v", "<C-_>", "gc", "Toggle comment")

-- Move line down
keymap("n", "<A-Down>", ":m .+1<CR>==", "Move line down")
keymap("n", "<A-j>", ":m .+1<CR>==", "Move line down")
keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", "Move selection down")
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", "Move selection down")

-- Move line up
keymap("n", "<A-Up>", ":m .-2<CR>==", "Move line up")
keymap("n", "<A-k>", ":m .-2<CR>==", "Move line up")
keymap("x", "<A-Up>", ":m '<-2<CR>gv=gv", "Move selection up")
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", "Move selection up")

--
keymap("n", "<leader>fp", ":let @+ = expand('%:p')<CR>", "Copy current file path")
