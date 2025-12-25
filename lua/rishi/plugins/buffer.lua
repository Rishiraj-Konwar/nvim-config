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
			highlights = {
				background = {
					bg = "none",
				},
				fill = {
					bg = "none",
				},
				-- This is the crucial part for the icons:
				buffer_visible = {
					bg = "none",
				},
				-- Fixes the black mark specifically on the inactive icons
				duplicate = {
					bg = "none",
				},
			},
		})
		vim.cmd([[
  highlight BufferLineFill guibg=NONE
  highlight BufferLineBackground guibg=NONE
  highlight BufferLineSeparator guibg=NONE
  highlight BufferLineIconInactive guibg=NONE
  highlight BufferLineDevIconDefaultInactive guibg=NONE
  highlight BufferLineDevIconLuaInactive guibg=NONE
  highlight BufferLineDevIconPythonInactive guibg=NONE
]])
		-- Function to clear all bufferline backgrounds
	end,
}
