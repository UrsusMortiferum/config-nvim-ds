return {
    {
        'folke/tokyonight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd [[
        colorscheme tokyonight-night
        highlight Normal guibg=NONE ctermbg=NONE
        highlight signcolumn guibg=NONE ctermbg=NONE
      ]]
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        opts = {
            options = {
                icons_enabled = true,
                theme = 'tokyonight',
                -- component_separators = '|'
                component_separators = { left = '', right = '' },
                section_separators = { left = '', right = '' },
            },
        },
    },
}
