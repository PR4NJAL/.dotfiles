return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("tokyonight").setup({
      on_colors = function(colors)
        colors.bg = "#101010"
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
