return {
  "rmagatti/auto-session",
  lazy = false,

  ---enables autocomplete for opts
  ---@module "auto-session"
  ---@type AutoSession.Config
  opts = {
    auto_save = false,    -- <--- Set this to OFF
    auto_restore = false, -- <--- Set this to OFF
    -- auto_create and auto_restore_last_session may also need to be false
    auto_create = false,
    auto_restore_last_session = false,
    suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
    -- log_level = 'debug',
  },
  config = function(_, opts)
    local auto_session = require("auto-session")
    auto_session.setup(opts)

    local keymap = vim.keymap
    keymap.set("n", "<leader>wr", "<cmd>AutoSession restore<CR>")
    keymap.set("n", "<leader>ws", "<cmd>AutoSession save<CR>")
    keymap.set("n", "<leader>wd", "<cmd>AutoSession delete<CR>")
  end
}
