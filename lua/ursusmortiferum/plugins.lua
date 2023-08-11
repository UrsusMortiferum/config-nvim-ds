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

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  'tpope/vim-sleuth',

  -- Database related plugins
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-ui',

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',

      -- Adds a database completion
      'kristijanhusak/vim-dadbod-completion'
    },
  },

  'github/copilot.vim',

  {
    "YannickFricke/codestats.nvim",
    config = function()
      require('codestats-nvim').setup({
        token = "SFMyNTY.VlhKemRYTmZUVzl5ZEdsbVpYSjFiUT09IyNNakEwT0RRPQ.4Eg9Lr8VH94F9SP1Ul7IYGnMEr-fdKfxw1kZjvEmey8"
      })
    end,
    requires = { 'nvim-lua/plenary.nvim' }
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

  -- "A useless plugin that might help you cope with stubbornly tests or overall lack of sense in life." ~ Eandrju
  { 'Eandrju/cellular-automaton.nvim' },

  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate',
  },

}
