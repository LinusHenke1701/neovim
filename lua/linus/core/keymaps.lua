vim.g.mapleader = " "

local keymap = vim.keymap
-- Basic keymaps
keymap.set("i", "jk", "<ESC>")                              -- jk closes insert mode
keymap.set("n", "x", '"_x')                                 -- deleting letter does not get copied to buffer
keymap.set("n", "<leader>nh", ":nohl<CR>")                  -- clearing search

-- Window Splits
keymap.set("n", "<leader>sv", "<C-w>v")                     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")                     -- split window horizontall 
keymap.set("n", "<leader>se", "<C-w>=")                     -- make splits equal size
keymap.set("n", "<leader>sx", ":close<CR>")                 -- close split window
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")       -- maximize a split

-- Tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")                -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")              -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>")                  -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>")                  -- go to pevious tab

-- Terminal split
local terminal_setup = ":ToggleTerm size=18 direction=horizontal name=vimTerminal"
keymap.set("n", "<leader>co", terminal_setup .. "<CR>")     -- open terminal

-- Nvim-Tree
keymap.set("n", "<C-f>", ":NvimTreeToggle<CR>")

-- LSP
keymap.set("n", "<leader>sd", ":lua vim.diagnostic.open_float()<CR>")   -- show diagnostics
keymap.set("n", "<leader>si", ":lua vim.lsp.buf.hover()<CR>")           -- show information
