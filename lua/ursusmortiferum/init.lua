require('ursusmortiferum.set')
require('ursusmortiferum.remap')
require('ursusmortiferum.plugins')
require('ursusmortiferum.functions')

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { import = 'ursusmortiferum.plugins' },
}, {})

vim.cmd([[command! ListToQuotedParantheses lua require('functions').ListToQuotedParantheses()]])
local listToQuotedParantheses = require('ursusmortiferum.functions').ListToQuotedParantheses
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
