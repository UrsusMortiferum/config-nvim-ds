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
-- Cut -> Black Hole Register -> paste above the current line
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Copy the selected to the system clipboard //asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Copy the current line to the system clipboard //asbjornHaland
vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Cut -> Black Hole Registed
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
-- Yes, make it rain -> it may help you cope with the reality of the world
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
-- Source the current file -> to be replaced (probably) by execute current file / query -> will think about the best (most used) solution
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
-- Opens file in a specified path
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/path<CR>");
-- Replace all occurrences of the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format         )

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>") --, { silent = true })
vim.keymap.set("n", "<leader>x", "<cmd>!python %<CR>")
