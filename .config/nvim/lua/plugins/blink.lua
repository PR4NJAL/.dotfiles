return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		"folke/lazydev.nvim",
		"nvim-mini/mini.nvim",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("mini.snippets").setup({
			snippets = {
				require("mini.snippets").gen_loader.from_lang(),
			},
		})
		require("blink-cmp").setup({
			snippets = { preset = "mini_snippets" },
			keymap = {
				preset = "default",
			},
			appearance = {
				nerd_font_variant = "normal",
			},
			completion = {
				documentation = { auto_show = true, auto_show_delay_ms = 500 },
			},
			sources = {
				default = { "lsp", "path", "snippets", "lazydev", "omni" },
				providers = {
					lazydev = { module = "lazydev.integrations.blink", score_offset = 100 },
				},
			},
			fuzzy = { implementation = "lua" },
			signature = { enabled = true },
		})
	end,
}
