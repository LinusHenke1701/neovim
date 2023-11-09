local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- tabs
width = 4

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

