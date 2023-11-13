-- Autocompletion

local setup, cmp = pcall(require, "cmp")
if not setup then
    print("Could not load cmp")
    return
end


cmp.setup{
    mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = "buffer"},
        { name = "path"},
    }),
}
