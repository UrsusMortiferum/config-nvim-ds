return {
    -- Fuzzy Finder (files, lsp, etc)
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons" }
    },

    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = "make",
        cond = function()
            return vim.fn.executable "make" == 1
        end,
    },
    --     {
    --         "nvim-telescope/telescope-file-browser.nvim",
    --         dependencies = {
    --             "nvim-telescope/telescope.nvim",
    --             "nvim-lua/plenary.nvim" }
    --     }
}

-- require("telescope").setup {
--     extenstions = {
--         file_browser = {
--             hijack_netrw = true,
--         }
--     }
-- }
