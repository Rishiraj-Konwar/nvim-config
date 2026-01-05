return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-mini/mini.nvim" },
	config = function()
		local nvimtree = require("nvim-tree")
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
		local screen_w = vim.opt.columns:get()
		nvimtree.setup({
			view = {
				float = {
					enable = true,
					open_win_config = {

						relative = "editor",
						border = "rounded", -- Options: "none", "single", "double", "rounded", "solid", "shadow"
						width = 35,
						height = 30,
						row = 4,
						col = math.floor(screen_w * 0.78),
					},
				},
				relativenumber = true,
			},
			renderer = {
				full_name = true,
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "",
							arrow_open = "",
						},
					},
				},
			},
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})
		local keymap = vim.keymap

		keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>")
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
		keymap.set("n", "<leader>eh", "<C-w>l")
	end,
}
