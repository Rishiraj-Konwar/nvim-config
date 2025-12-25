return{
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  event = {"BufReadPre", "BufNewFile"},
  dependencies = {"windwp/nvim-ts-autotag"},

  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = {enable = true},
      autotag = {enable = true},
      ensure_installed = {
        "html",
        "css",
        "javascript",
        "python",
        "go",
        "gomod",
        "gosum",
        "java",
        "json",
        "lua",
        "nginx",
        "sql",
        "typescript",
        "c"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        }
      }
    })
  end
}
