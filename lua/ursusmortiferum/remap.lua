vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local keymap = vim.keymap.set

keymap('n', '<leader>pv', vim.cmd.Ex, { desc = 'Explore' })

keymap('v', 'J', ":m '>+1<CR>gv=gv")
keymap('v', 'K', ":m '<-2<CR>gv=gv")

keymap('n', '<C-d>', '<C-d>zz')
keymap('n', '<C-u>', '<C-u>zz')

keymap('n', 'n', 'nzzzv')
keymap('n', 'N', 'Nzzzv')

keymap('x', '<leader>p', [["_dP]])

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
keymap('n', '<leader>Y', [["+Y]])

keymap('n', '<leader><leader>', function()
    vim.cmd('so')
end)

keymap('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

keymap('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat' })

keymap('i', '<C-c>', '<Esc>')

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Yes, make it rain -> it may help you cope with the reality of the world
keymap('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>', { desc = 'Make it rain' })

keymap('n', '<leader>tt', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
keymap('n', '<leader>tr', '<cmd>NvimTreeRefresh<CR>', { desc = 'Refresh NvimTree' })
--
--
--
keymap('n', 'Q', '<nop>')
keymap('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

keymap('n', '<leader>x', '<cmd>!chmod +x %<CR>') --, { silent = true })
keymap('n', '<leader>x', '<cmd>!python %<CR>')
-- Join the current line with the line below it
-- keymap('n', 'J', "mzJ'z")
-- Opens file in a specified path
-- keymap('n', '<leader>vpp', "<cmd>e ~/path<CR>");
keymap('n', '<leader>vwm', function()
    require('vim-with-me').StartVimWithMe()
end)
keymap('n', '<leader>svwm', function()
    require('vim-with-me').StopVimWithMe()
end)

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
keymap('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
keymap('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
keymap('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
