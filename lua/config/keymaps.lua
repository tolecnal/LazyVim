-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Copy to clipboard
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+yg_', { desc = "Yank to end of line to system clipboard" })
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Yank line to system clipboard" })

-- Paste from clipboard
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste after from system clipboard" })
vim.keymap.set("n", "<leader>P", '"+P', { desc = "Paste before from system clipboard" })
vim.keymap.set("v", "<leader>p", '"+p', { desc = "Paste after from system clipboard (visual)" })
vim.keymap.set("v", "<leader>P", '"+P', { desc = "Paste before from system clipboard (visual)" })
