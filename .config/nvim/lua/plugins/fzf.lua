return {
	"ibhagwan/fzf-lua",
	dependencies = { "echasnovski/mini.nvim", opts = {} },
	opts = {},
	keys = {
		{ "<leader>sr", "<CMD>FzfLua resume<CR>" },
		{ "<leader>st", "<CMD>FzfLua tmux_buffers<CR>" },
		{ "<leader>sz", "<CMD>FzfLua zoxide<CR>" },
		{ "<leader>sb", "<CMD>FzfLua buffers<CR>" },
		{ "<leader>so", "<CMD>FzfLua lsp_document_symbols<CR>" },
	},
}
