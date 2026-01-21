vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to space
opt.autoindent = true -- copy indent from the current line when starting new line

--search settings
opt.ignorecase = true
opt.smartcase = true

--color scheme settings
opt.background = "dark"
opt.signcolumn = "yes"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard

--split windows
opt.splitright = true
opt.splitbelow = true
-- This replaces the ~ with a space globally
vim.opt.fillchars:append({ eob = " " })
vim.opt.showtabline = 1
-- Force NvimTree to use the same background as your main editor
vim.cmd([[
  highlight NvimTreeNormal guibg=NONE ctermbg=NONE
  highlight NvimTreeNormalNC guibg=NONE ctermbg=NONE
  highlight NvimTreeEndOfBuffer guibg=NONE ctermbg=NONE
  highlight NvimTreeWinSeparator guibg=NONE gui=NONE
]])
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none", ctermbg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none", ctermbg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "none", ctermbg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "none", ctermbg = "none" })
  end,
})
