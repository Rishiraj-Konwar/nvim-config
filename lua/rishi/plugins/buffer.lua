return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-mini/mini.nvim",

	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				style_preset = require("bufferline").style_preset.default,
				show_buffer_close_icons = false,
				show_close_icon = false,
			},
		})
		vim.cmd([[
    highlight BufferLineFill guibg=NONE
]])
	end,
}
