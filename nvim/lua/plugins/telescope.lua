return {
	"nvim-telescope/telescope.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
	},

	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({
			defaults = {
				file_ignore_patterns = {
					"node_modules",
					".git/",
				},
			},

			pickers = {
				file_ignore_patterns = { 'node_modules', '%.git', '%.venv' },
				find_files = {
					hidden = true,
				},
				 live_grep = {
          file_ignore_patterns = { 'node_modules', '%.git', '%.venv' },
          additional_args = function(_)
            return { '--hidden' }
          end,
  }
			},

			extensions = {
				fzf = {
					fuzzy = true,
					override_generic_sorter = true,
					override_file_sorter = true,
					case_mode = "smart_case",
				},
			},
		})

		telescope.load_extension("fzf")

		-- File navigation
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

		-- VSCode-like
		vim.keymap.set("n", "<C-p>", builtin.find_files, {})
	end,
}
