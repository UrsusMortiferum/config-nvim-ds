vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Explore' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('x', '<leader>p', [["_dP]])

vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set('n', '<leader><leader>', function()
    vim.cmd('so')
end)

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat' })

vim.keymap.set('i', '<C-c>', '<Esc>')

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- Yes, make it rain -> it may help you cope with the reality of the world
vim.keymap.set('n', '<leader>mr', '<cmd>CellularAutomaton make_it_rain<CR>', { desc = 'Make it rain' });
--
--
--
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')

vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>') --, { silent = true })
vim.keymap.set('n', '<leader>x', '<cmd>!python %<CR>')
-- Join the current line with the line below it
-- vim.keymap.set('n', 'J', "mzJ'z")
-- Opens file in a specified path
-- vim.keymap.set('n', '<leader>vpp', "<cmd>e ~/path<CR>");
vim.keymap.set('n', '<leader>vwm', function()
    require('vim-with-me').StartVimWithMe()
end)
vim.keymap.set('n', '<leader>svwm', function()
    require('vim-with-me').StopVimWithMe()
end)

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
