require("nvim-treesitter.install").update({ with_sync = true })

local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end


treesitter.setup({
    highlight = {
        enable = true
    },
    indent = { enable = true },
    autotag = { enable = true },
    ensure_installed = {
        "dockerfile",
    },
    auto_install = true,
})

