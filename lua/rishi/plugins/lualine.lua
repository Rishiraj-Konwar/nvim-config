return {
	"nvim-lualine/lualine.nvim",
	dependencies = {'nvim-mini/mini.nvim'},

	config = function()
		local lazy_status = require("lazy.status")
		require("lualine").setup({
			options = {
			theme = "everforest",
				component_separators = "",
				section_separators = { right = "", left = "" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "", right = "" }, right_padding = 2 } },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					{ "encoding" },
					{ "fileformat" },
				},
				lualine_y = { "filetype", "progress" },
			},
			lualine_z = {
				{ "location", separator = { left = "", right = "" }, left_padding = 2 },
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {},
		})
	end,
}
