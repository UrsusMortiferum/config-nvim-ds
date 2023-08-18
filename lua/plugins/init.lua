return {
    'tpope/vim-sleuth',
    {
        'lukas-reineke/indent-blankline.nvim',
        opts = {
            char = '┊',
            space_char_blankline = ' ',
            show_trailing_blankline_indent = false,
            show_current_context = true,
            show_current_context_start = true,
        },
    },
    { 'numToStr/Comment.nvim', opts = {} },
    {
        'stevearc/dressing.nvim',
        event = 'VeryLazy',
        opts = {
            input = { relative = 'editor' },
            select = {
                backend = { 'telescope', 'fzf', 'builtin' },
            },
        },
    },
}
