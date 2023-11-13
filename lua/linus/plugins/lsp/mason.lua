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


mason.setup({})


local servers = {}
for key, _ in pairs(require("linus.plugins.lsp.lsp_servers")) do
    table.insert(servers, key)
end

mason_lsp.setup {
    ensure_installed = servers,
    automatics_installation = true,
}

