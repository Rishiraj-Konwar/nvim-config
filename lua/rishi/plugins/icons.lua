return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		local icons = require("mini.icons")
		icons.setup({
      style = "glyph"
    })
		icons.mock_nvim_web_devicons()
	end,
}
