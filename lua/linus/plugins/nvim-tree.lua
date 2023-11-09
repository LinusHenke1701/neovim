local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    print("nvim-tree could not be loaded.")
end


-- recommended setup
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- color = "#98971a"
-- color = "#b8bb26"
-- vim.cmd([[ highlight NvimTreeIndentMarker guifg=#B8BB26 ]])

nvimtree.setup({
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "󱦰",
                    arrow_open = "󱞩",
                },
            },
        },
    },
    actions = {
        open_file = {
            window_picker = {
                enable = false,
            },
        },
    },
})
