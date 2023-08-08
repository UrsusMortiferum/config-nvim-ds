-- Shortcuts:
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- Explore function
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Move selected lines down one line
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- Move selected lines up two lines
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- Join the current line with the line below it
-- vim.keymap.set("n", "J", "mzJ'z")
-- Scroll down the buffer and center the cursor on the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- Scroll up the buffer and center the cursor on the screen
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Standard Search + center the cursor on the screen after moving to the next match
vim.keymap.set("n", "n", "nzzzv")
-- Standard Reverse Search + center the cursor on the screen after moving to the previous match
vim.keymap.set("n", "N", "Nzzzv")
--

--
--
--
--
--
--
--
--
--
--
--
--
