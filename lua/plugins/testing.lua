return {
    {
        'nvim-tree/nvim-tree.lua',
        version = '*',
        lazy = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            require('nvim-tree').setup {}
        end,
    },
    {
        'm4xshen/hardtime.nvim',
        enabled = true,
        dependencies = { 'MunifTanjim/nui.nvim', "nvim-lua/plenary.nvim" },
        opts = {}
    },
}
