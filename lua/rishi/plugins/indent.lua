return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		require("ibl").setup({
			indent = { char = "▎" }, -- Thinner line
			scope = { enabled = true, show_start = false, show_end = false}, -- Highlight active block
		})
	end,
}
