-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = {
	noremap = true,
	silent = true,
}

--- Select automatically
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<C-m>", "<C-i>", opts)
----  New tab

keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--- split tab

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
--- Move window

keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "sj", "<C-w>j", opts)
keymap.set("n", "sl", "<C-w>l", opts)

--- Diagnostics

keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)
--- Close  buffer
keymap.set("n", "<C-w>", ":bd<CR>")

--- Harpoonlocal
-- mark = require("harpoon.mark")
-- local ui = require("harpoon.ui")
--
-- vim.keymap.set("n", "<leader>nj", mark.add_file)
-- vim.keymap.set("n", "<C-e->", ui.toggle_quick_menu)
--
-- vim.keymap.set("n", "<C-h>", function()
-- 	ui.nav_file(1)
-- end)
-- vim.keymap.set("n", "<C-t>", function()
-- 	ui.nav_file(2)
-- end)
-- vim.keymap.set("n", "<C-n>", function()
-- 	ui.nav_file(3)
-- end)
-- vim.keymap.set("n", "<C-s>", function()
-- 	ui.nav_file(4)
-- end)
