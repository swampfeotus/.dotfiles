-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set function "map"
local map = vim.api.nvim_set_keymap
--map("n", "<leader>vw", "<cmd>tabnew<cr>", { desc = "New Tab" })

-- Modes
--  normal_mode = "n",
--  insert_mode = "i",
--  visual_mode = "v",
--  visual_block_mode = "x",
--  term_mode = "t",
--  command_mode = "c",

-- VimWiki Mappings

map("n", "<leader>vw", "<Plug>VimwikiIndex", { desc = "VimWiki Index" })
map("n", "<leader>vt", "<Plug>VimWikiTabIndex", { desc = "VimWiki TabIndex" })
map("n", "<leader>vs", "<Plug>VimwikiUISelect", { desc = "VimWiki Select" })
map("n", "<leader>vi", "<Plug>VimwikiDiaryIndex", { desc = "VimWiki DiaryIndex" })
map("n", "<leader>vd", "<Plug>VimwikiDeleteFile", { desc = "Delete Current Wiki" })
map("n", "<leader>vr", "<Plug>VimwikiRenameFile", { desc = "Rename Wiki" })
