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
    { import = 'plugins' },
}, {})

require('lazy').setup {
    spec = {
        { import = "plugins" },
    },
    defaults = {
        lazy = true },
    dev = {
        -- directory where you store your local plugin projects
        path = "~/projects",
        ---@type string[] plugins that match these patterns will use your local versions instead of being fetched from GitHub
        patterns = {},    -- For example {"folke"}
        fallback = false, -- Fallback to git when local plugin doesn't exist
    },
    install = {
        missing = true,
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { 'tokyonight-night' },
    },
    performance = {
        rtp = {
            disabled_plugins = {
                -- "gzip",
                -- "matchit",
                -- "matchparen",
                -- "netrwPlugin",
                -- "tarPlugin",
                -- "tohtml",
                -- "tutor",
                -- "zipPlugin",
            },
        },
    },
}

vim.keymap.set('n', '<leader>ll', '<cmd>:Lazy<CR>', { desc = '[L]aunch [L]azy' })
