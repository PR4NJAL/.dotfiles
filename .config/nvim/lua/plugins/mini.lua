return {
	"nvim-mini/mini.nvim",
	config = function()
		require("mini.ai").setup({ n_lines = 200 })
		require("mini.basics").setup()
		require("mini.comment").setup()
		require("mini.diff").setup()
		require("mini.git").setup()
		require("mini.hipatterns").setup({
			highlighters = {
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
		require("mini.icons").setup()
		MiniIcons.mock_nvim_web_devicons()
		require("mini.move").setup()
		require("mini.pairs").setup({
			modes = { insert = true, command = true, terminal = false },
			skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
			skip_ts = { "string" },
			skip_unbalanced = true,
			markdown = true,
		})
		require("mini.sessions").setup()
		local statusline = require("mini.statusline")
		statusline.setup({ use_icons = vim.g.have_nerd_font })
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end
		require("mini.surround").setup()
		require("mini.files").setup()
	end,
	keys = {
		{ "<leader>=", ":lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<CR>", desc = "Open Oil" },
	},
}
