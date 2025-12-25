return{
  'akinsho/toggleterm.nvim', 
  version = "*",
  config = function ()
     require("toggleterm").setup({
      size = 10,
      direction = "float",
      close_on_exit = true,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal"
        }
      }
    })
    vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>", {
      desc = "Toggle Floating Terminal",
      noremap = true,
      silent = true
    })
    vim.keymap.set("t", "<C-t>", [[<C-\><C-n><cmd>ToggleTerm<CR>]], {
      desc = "Toggle Floating Terminal (Close)",
      noremap = true,
      silent = true
    })
  end
}

