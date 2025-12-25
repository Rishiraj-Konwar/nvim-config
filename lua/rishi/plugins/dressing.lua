return {
	"stevearc/dressing.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
		require("dressing").setup({
			input = {
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder,FloatTitle:Normal",
				},
			},
			select = {
				win_options = {
					winhighlight = "Normal:Normal,FloatBorder:FloatBorder,FloatTitle:Normal",
				},
			},
		})
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "FloatTitle", { bg = "none" })
	end,
}
