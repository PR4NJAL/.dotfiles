-- return {
--   "rose-pine/neovim",
--   priority = 1000,
--   name = "rose-pine",
--   config = function()
--     vim.cmd("colorscheme rose-pine")
--   end,
-- }

return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		---@diagnostic disable-next-line: missing-fields
		require("tokyonight").setup({
			styles = {
				comments = { italic = false },
			},
		})
		vim.cmd.colorscheme("tokyonight-night")
	end,
}
