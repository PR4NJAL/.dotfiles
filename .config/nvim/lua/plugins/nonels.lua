return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.clang_format,
				null_ls.builtins.formatting.prettier,
			},
		})
	end,
	keys = {
		{
			"<leader>af",
			"<CMD>lua vim.lsp.buf.format({ timeout_ms = 3000 })<CR>",
			desc = "Auto Format Buffer",
		},
	},
}
