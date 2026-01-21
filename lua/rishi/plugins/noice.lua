return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		--   `nvim-notify` is only needed, if you want to use the notification view.
		--   If not available, we use `mini` as the fallback
	},
	config = function()
		require("noice").setup({
      presets = {
        lsp_doc_border = true
      },
      cmdline = {
        format = {
          cmdline = {title = "", icon = ":"}
        }
      },
			vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = "#EBE1D1" }),
      vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = "#EBE1D1" })
		})
	end,
}
