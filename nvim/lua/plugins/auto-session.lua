return {
	"rmagatti/auto-session",
	config = function()
		require("auto-session").setup({
			auto_restore_enabled = true,
			auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },

			session_lens = {
				load_on_setup = true,
			},
		})
	end,
}
