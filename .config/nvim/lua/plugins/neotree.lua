return {
	"nvim-neo-tree/neo-tree.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		{
			"antosha417/nvim-lsp-file-operations",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-neo-tree/neo-tree.nvim",
			},
			opts = {},
		},
		{
			"s1n7ax/nvim-window-picker",
			version = "2.*",
			opts = {
				filter_rules = {
					include_current_win = false,
					autoselect_one = true,
					bo = {
						filetype = { "neo-tree", "neo-tree-popup", "notify" },
						buftype = { "terminal", "quickfix" },
					},
				},
			},
		},
	},
	lazy = false,
	keys = {
		{ "<leader>e", ":Neotree toggle<CR>", desc = "NeoTree toggle", silent = true },
		{ "<leader><TAB>", ":Neotree buffers toggle<CR>", desc = "Open Buffers", silent = true },
	},
}
