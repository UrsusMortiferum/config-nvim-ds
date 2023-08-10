-- Current font of preference: JetBrainsMono Nerd Font Mono
-- See `:help vim.o`
--
-- Indention options
-- Sets the number of spaces a <Tab> character occupies
vim.o.tabstop = 4
-- Sets the number of spaces inserted for identation when using <Tab> or <BS>
vim.o.softtabstop = 4
-- Sets the number of spaces used for each step of (auto)indent
vim.o.shiftwidth = 4
-- Inserts spaces instead of <Tab> characters for indentation
vim.o.expandtab = true
-- Enable smart indentation
vim.o.smartindent = true
-- Enable break indent
vim.o.breakindent = true
--
-- Cursor options
-- Sets the GUI Cursor to an empty string, which effectively hides it
vim.o.guicursor = ""
--
-- Display options
-- Enables line numbers to be displayed on the left side of the buffer
vim.o.nu = true
-- Displays relative line numbers from the current line
vim.o.relativenumber = true
-- Disables line wrapping
vim.o.wrap = false
-- Enables true-color support
vim.o.termguicolors = true
-- Sets the number of lines that should be visible above or below the cursor when scrolling
vim.o.scrolloff = 8
-- Sets the sign column to always be displayed
vim.o.signcolumn = "yes"
-- Displays a vertical line at the 80th column to help visualize the code width limit
vim.o.colorcolumn = "80"
--
-- Files options
-- Disables swap files
vim.o.swapfile = false
-- Disables backup files
vim.o.backup = false
-- sets the directory where undo files are stored
-- vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Enables persistent undo
vim.o.undofile = true
-- Supposedly useful for the file management, etc. will need to explore it later
-- vim.o.isfname:append("@-@")
--
-- Search options
-- Disables highlighting of search matches
vim.o.hlsearch = false
-- Enables incremental search
vim.o.incsearch = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
--
-- Other options
-- Sets the time in milliseconds to trigger the CursorHold event
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
-- Enable mouse mode
vim.o.mouse = 'a'
-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
