local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Color column
opt.colorcolumn = "80"
vim.cmd [[highlight ColorColumn ctermbg=lightgrey guibg=#d3d3d3]]

-- tabs
local width = 4

opt.tabstop = width
opt.shiftwidth = width
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
-- opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- clipboard config
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

