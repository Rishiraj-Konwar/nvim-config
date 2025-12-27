return {
	"nvim-mini/mini.nvim",
	version = false,
	config = function()
		local icons = require("mini.icons")
		icons.setup({
			style = "glyph",
		})
		icons.mock_nvim_web_devicons()
		local notif = require("mini.notify")
		notif.setup({
			content = {
				format = function(notif)
					local icon = notif.level == "error" and " " or " "
					return string.format("%s %s", icon, notif.msg)
				end,
			},
			window = {
				config = {
					border = "rounded",
				},
			},
		})
		vim.notify = notif.make_notify()
	end,
}
