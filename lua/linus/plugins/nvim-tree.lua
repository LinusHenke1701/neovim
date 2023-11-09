local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    print("nvim-tree could not be loaded.")
end


-- recommended setup
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup()
