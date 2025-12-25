return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	---@module "ibl"
	---@type ibl.config
	opts = {},
	config = function()
		require("ibl").setup({
			indent = { char = "▎" }, -- Thinner line
			scope = { enabled = true }, -- Highlight active block
		})
	end,
}
