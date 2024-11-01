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

local setup, lazy = pcall(require, "lazy")

if not setup then
    print("Did not load lazy.")
    return
end

lazy.setup({
    {"nvim-lua/plenary.nvim"},

    --  Colorscheme
    {
        "morhetz/gruvbox",
        priority = 1000,
    },
    {
        "craftzdog/solarized-osaka.nvim",
        lazy = false,
        priority = 1000,
--        opts = {},
--        setup = function ()
--            vim.cmd[[colorscheme solarized-osaka]]
--        end,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function ()
            vim.cmd[[colorscheme tokyonight-night]]
        end,
    },

    --  Toggleterm (Built in Terminal)
    {'akinsho/toggleterm.nvim', version = "*", config = true},

    --  Tmux-Navigator (Navigate through splits with ctrl)
    {'alexghergh/nvim-tmux-navigation'},

    --  Vim Maximizer (Maximize splits.)
    {'szw/vim-maximizer'},

    --  Soround (For sorounding movements with characters)
    {"tpope/vim-surround"},

    -- Replace with register (Replace given text with register)
    {"vim-scripts/ReplaceWithRegister"},

    --  Nvim Tree
    {"nvim-tree/nvim-tree.lua"},

    --  LuaLine
    {"nvim-lualine/lualine.nvim"},

    --  Dressing (For extra functionality of the input and select function
    {
        "stevearc/dressing.nvim",
        event = "VeryLazy",
    },

    --  Telescope
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {"nvim-telescope/telescope-fzf-native.nvim", build = "make" },
            "nvim-tree/nvim-web-devicons",
        },
    },

    --  Autocompletion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
        },
    },
    {"L3MON4D3/LuaSnip"},
    {"saadparwaiz1/cmp_luasnip"},
    {"rafamadriz/friendly-snippets"},

    --  Managing LSP
    {
        "williamboman/mason.nvim",
        dependencies = {"williamboman/mason-lspconfig.nvim"},
    },

    --  Configure LSP
    {
        "neovim/nvim-lspconfig",
        event = {"BufReadPre", "BufNewFile"},
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            {"antosha417/nvim-lsp-file-operations", config = true},
        },
    },
    {"nvimdev/lspsaga.nvim"},
    {"onsails/lspkind.nvim"},

    --  treesitter
    {
        "nvim-treesitter/nvim-treesitter",
    },

    --  auto closing
    {"windwp/nvim-autopairs"},
    {"windwp/nvim-ts-autotag"},


    --  git integration
    {"lewis6991/gitsigns.nvim"},

    --  Pyright venv setup
    {"HallerPatrick/py_lsp.nvim"},

    --  Copilot integration
    {"github/copilot.vim"},

    --  LaTeX integration
    {"lervag/vimtex"},
})


