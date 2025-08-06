return {
	"supermaven-inc/supermaven-nvim",
	event = "InsertEnter",
	cmd = {
		"SupermavenUseFree",
	},
	opts = {
		keymaps = {
			accept_suggestion = nil,
		},
		disable_inline_completion = vim.g.ai_cmp,
		ignore_filetypes = { "bigfile", "snacks_input", "snacks_notif" },
	},
	keys = {
		{ "<leader>st", "<cmd>SupermavenToggle<cr>", desc = "Toggle Supermaven" },
	},
}
