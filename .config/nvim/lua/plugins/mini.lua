return {
  "echasnovski/mini.nvim",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })
    require("mini.surround").setup()
    require("mini.move").setup()
    require("mini.pairs").setup()
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
    local statusline = require("mini.statusline")
    statusline.setup({ use_icons = vim.g.have_nerd_font })
    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return "%2l:%-2v"
    end
  end,
}
