local colorscheme = "tokyonight"
local functions = {
    solarized_osaka = function()
        vim.cmd[[colorscheme solarized-osaka]]
        vim.opt.background = "dark"
    end,

    gruvbox = function()
        vim.cmd[[colorscheme gruvbox]]
        vim.opt.background = "dark"
    end,
    
    tokyonight = function()
        vim.cmd[[colorscheme tokyonight-night]]
        vim.opt.background = "dark"
    end,
}


functions[colorscheme]()
