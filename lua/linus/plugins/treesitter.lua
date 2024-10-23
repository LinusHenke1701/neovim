require("nvim-treesitter.install").update({ with_sync = true })

local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end


treesitter.setup({
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    sync_install = false,
    indent = { enable = true },
    autotag = { enable = true },
    ensure_installed = {
        "dockerfile",
        "cpp",
        "css",
        "bash",
        "c",
        "cmake",
        "csv",
        "html",
        "java",
        "javascript",
        "lua",
        "python",
        "rust",
        "latex"
    },
    auto_install = true,
})

