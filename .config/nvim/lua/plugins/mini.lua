return {
	"echasnovski/mini.nvim",
	dependencies = { "rafamadriz/friendly-snippets" },
	config = function()
		require("mini.ai").setup({ n_lines = 500 })
		require("mini.surround").setup()
		require("mini.icons").setup()
		require("mini.move").setup()
		require("mini.pairs").setup({
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			skip_unbalanced = true,
		})
		require("mini.cursorword").setup()
		require("mini.snippets").setup({
			snippets = {
				require("mini.snippets").gen_loader.from_lang(),
			},
		})
		require("mini.diff").setup({
			view = {
				style = "sign",
				signs = {
					add = "+",
					change = "~",
					delete = "_",
				},
			},
		})
		require("mini.hipatterns").setup({
			highlighters = {
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
		require("mini.files").setup()
	end,
	keys = {
		{ "<leader>-", "<CMD>lua MiniFiles.open()<CR>", desc = "Open Oil" },
	},
}
