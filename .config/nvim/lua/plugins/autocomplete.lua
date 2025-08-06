return {
	"saghen/blink.cmp",
	event = "VimEnter",
	version = "1.*",
	dependencies = {
		{
			"L3MON4D3/LuaSnip",
			version = "2.*",
			build = (function()
				if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
					return
				end
				return "make install_jsregexp"
			end)(),
			opts = {},
		},
		{
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		{
			"saghen/blink.compat",
			version = "2.*",
			opts = {},
		},
		{ "dmitmel/cmp-digraphs" },
		{ "folke/lazydev.nvim" },
		{ "supermaven-nvim" },
		{ "echasnovski/mini.snippets", opts = {} },
	},
	--- @module 'blink.cmp'
	--- @type blink.cmp.Config
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

		sources = {
			default = { "lsp", "path", "snippets", "lazydev", "buffer", "digraphs", "supermaven" },
			providers = {
				lazydev = { name = "LazyDev", module = "lazydev.integrations.blink", score_offset = 100 },
				digraphs = {
					name = "digraphs",
					module = "blink.compat.source",
					score_offset = -3,
					opts = {
						cache_digraphs_on_start = true,
					},
				},
				supermaven = {
					name = "supermaven",
					module = "blink.compat.source",
					score_offset = 100,
					async = true,
				},
			},
		},

		snippets = { preset = "luasnip" },

		fuzzy = { implementation = "lua" },

		signature = { enabled = true },
	},
}
