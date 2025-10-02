return {
	"stevearc/oil.nvim",
	opts = {},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	keys = {
		{ "<leader>-", ":Oil.toggle_float<CR>", desc = "Open parent directory" },
	},
}
