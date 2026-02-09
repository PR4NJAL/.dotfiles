return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("tokyonight").setup({
			on_colors = function(colors)
				colors.bg = "#101010"
			end,
			on_highlights = function(hl, colors)
				hl.StatusLine = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineModeNormal = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineModeInsert = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineModeCommand = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineModeVisual = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineModeOther = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineDevinfo = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineFilename = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineFileinfo = { fg = colors.bg_dark, bg = "#c3c5cc" }
				hl.MiniStatuslineInactive = { fg = colors.bg_dark, bg = "#c3c5cc" }
			end,
			styles = {
				comments = { italic = false },
				sidebars = "transparent",
				floats = "transparent",
			},
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
