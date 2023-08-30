return {
    {
        "tpope/vim-dadbod",
        event = "BufReadPre",
    },
    {
        "kristijanhusak/vim-dadbod-ui",
        event = "BufReadPre",
        requires = { "tpope/vim-dadbod" },
    },
}
