local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Color column
opt.colorcolumn = "80"
vim.cmd [[highlight ColorColumn ctermbg=lightgrey guibg=#d3d3d3]]

vim.o.termguicolors = true

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


-- padding issues
function Sad(line_nr, from, to, fname)
  vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname)) 
end

function IncreasePadding() 
  Sad('07', 0, 20, '~/dotfiles/alacritty/alacritty.windows.yml')
  Sad('08', 0, 20, '~/dotfiles/alacritty/alacritty.windows.yml')
end

function DecreasePadding()
  Sad('07', 20, 0, '~/dotfiles/alacritty/alacritty.windows.yml')
  Sad('08', 20, 0, '~/dotfiles/alacritty/alacritty.windows.yml')
end

vim.cmd[[
  augroup ChangeAlacrittyPadding
   au! 
   au VimEnter * lua DecreasePadding()
   au VimLeavePre * lua IncreasePadding()
  augroup END 
]]
