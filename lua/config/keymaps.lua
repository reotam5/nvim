-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- jk in insert mode to be escape
vim.keymap.set("i", "jk", "<Esc>", { desc = "jk to escape" })

-- move selected up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected up" })

-- ctrl + d to discard file changes
vim.keymap.set("n", "<C-d>", ":e!<CR>", { desc = "Discard file changes" })

-- open terminal
vim.keymap.set("n", "<leader>t", ":terminal<CR>", { desc = "Open terminal" })

-- exit terminal mode
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
