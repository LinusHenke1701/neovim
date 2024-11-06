require("nvim-treesitter.install").update({ with_sync = true })

local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end


treesitter.setup({
    highlight = {
        enable = true,
        disable = function(lang, buf)
            if lang == "html" then
                 return true
            end
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                vim.notify(
                    "File larger than 100KB treesitter disabled for performance",
                    vim.log.levels.WARN,
                    {title = "Treesitter"}
                )
                return true
            end
        end,
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

