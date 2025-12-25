vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", "<cmd>close<CR>")

-- Switch to next buffer
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next Buffer" })

-- Switch to previous buffer
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Prev Buffer" })
-- Add this to your init.lua to clean up the mess
vim.keymap.set("n", "<leader>bo", "<cmd>%bd|e#|bd#<cr>", { desc = "Close all buffers except current" })
-- Close buffer by typing 'bd' in normal mode
vim.keymap.set("n", "<leader>x", "<cmd>bd<cr>", { desc = "Buffer Delete" })
