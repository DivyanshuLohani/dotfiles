vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.backspace = "indent,eol,start"

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.breakindentopt = "shift:0"
vim.opt.showbreak = "  "

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Use Tree-sitter for folding expressions
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- Keep all folds open by default when opening a file (so code isn't hidden immediately)
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
