-- Autocompletion
local setup, cmp = pcall(require, "cmp")
if not setup then
    print("Could not load cmp")
    return
end

local setup, luasnip = pcall(require, "luasnip")
if not setup then
    print("Could not load luasnip")
    return
end

require("luasnip.loaders.from_vscode").lazy_load()


cmp.setup{
    completion = {
        completeopt = "menu,menuone,preview,noselect",
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
        { name = "luasnip"},
        { name = "buffer"},
        { name = "path"},
    }),
}

