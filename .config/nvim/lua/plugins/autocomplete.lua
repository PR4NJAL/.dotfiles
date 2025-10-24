return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		{ "rafamadriz/friendly-snippets" },
		{ "echasnovski/mini.nvim" },
		{ "folke/lazydev.nvim" },
	},
	opts = {
		keymap = {
			preset = "default",
		},
		appearance = {
			nerd_font_variant = "normal",
		},
		completion = {
			documentation = { auto_show = true, auto_show_delay_ms = 500 },
		},
		snippets = { preset = "mini_snippets" },
		sources = {
			default = { "lsp", "path", "snippets", "lazydev", "buffer" },
			providers = {
				lazydev = { name = "LazyDev", module = "lazydev.integrations.blink", score_offset = 100 },
			},
		},
		fuzzy = { implementation = "lua" },
		signature = { enabled = true },
	},
}
