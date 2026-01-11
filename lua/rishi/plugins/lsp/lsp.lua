return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		vim.lsp.config("*", {
			capabilities = capabilities,
		})
		local servers = {
			"lua_ls",
			"gopls",
			"pyright",
			"clangd",
			"jdtls",
			"ts_ls",
			"yamlls",
			"dockerls",
			"docker_compose_language_service",
			"html",
			"cssls",
			"emmet_ls",
			"jsonls",
			"eslint",
			"graphql",
      "intelephense"
		}
		for _, server in ipairs(servers) do
			vim.lsp.enable(server)
		end
		local keymap = vim.keymap
		keymap.set("n", "gd", vim.lsp.buf.definition)
		keymap.set("n", "gD", vim.lsp.buf.declaration)
		keymap.set("n", "gi", vim.lsp.buf.implementation)
		keymap.set("n", "gr", vim.lsp.buf.references)
		keymap.set("n", "gt", vim.lsp.buf.type_definition)
		keymap.set("n", "K", function()
			vim.lsp.buf.hover({
				border = "rounded", -- Sets a single line border for hover
				max_height = 25, -- Sets a maximum height
				max_width = 120, -- Sets a maximum width
			})
		end, {desc = "Hover documentation"})
	end,
}
