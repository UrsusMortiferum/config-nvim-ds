return {

    {
        "YannickFricke/codestats.nvim",
        config = function()
            require('codestats-nvim').setup({
                token =
                "SFMyNTY.VlhKemRYTmZUVzl5ZEdsbVpYSjFiUT09IyNNakEwT0RRPQ.4Eg9Lr8VH94F9SP1Ul7IYGnMEr-fdKfxw1kZjvEmey8"
            })
        end,
        requires = { 'nvim-lua/plenary.nvim' }
    },

}
