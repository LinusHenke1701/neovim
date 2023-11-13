local setup, mason = pcall(require, "mason")
if not setup then
    print("Could not load mason.")
    return
end


local setup, mason_lsp = pcall(require, "mason-lspconfig")
if not setup then
    print("Could not load mason-lspconfig")
    return
end


mason.setup()


local servers = require("linus.plugins.lsp.lsp_servers")


-- mason_lsp.setup {
--     ensure_installed = {
--         "clangd",
--         "cmake",
--         "dockerls",
--         "lua_ls",
--         "pyright"
--     },
-- }
--
mason_lsp.setup {
    ensure_installed = servers
}

