vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.breakindent = true

vim.o.guicursor = ""
vim.o.nu = true
vim.o.relativenumber = true
vim.o.wrap = false
vim.o.termguicolors = true
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"
vim.o.colorcolumn = "80"

vim.cmd([[autocmd BufWritePre * :Format]])
vim.o.swapfile = false
vim.o.backup = false
vim.o.undofile = true

vim.o.hlsearch = false
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 25

vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.mouse = 'a'

vim.o.completeopt = 'menuone,noselect'

local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})

function ListToSQLFragment(elements)
    local fragment = "(" .. table.concat(elements, "', '") .. "')"
    return fragment
end

-- See `:help vim.o`
-- Sync clipboard between OS and Neovim.
-- vim.o.clipboard = 'unnamedplus'
-- Supposedly useful for the file management, etc. will need to explore it later
-- vim.o.isfname:append("@-@")
-- sets the directory where undo files are stored
-- vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
