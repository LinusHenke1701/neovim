local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"nvim-lua/plenary.nvim"},
    {
        "morhetz/gruvbox",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme gruvbox]])
        end,
    },
    {'akinsho/toggleterm.nvim', version = "*", config = true},
    {'nvim-lualine/lualine.nvim'},
    {'christoomey/vim-tmux-navigator'},
    {'szw/vim-maximizer'},
    {"tpope/vim-surround"},
    {"vim-scripts/ReplaceWithRegister"},
    {"nvim-tree/nvim-tree.lua"},
    {"nvim-tree/lualine.nvim"},
})

