local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
    print("Could not load lspconfig")
    return
end

local cmp_nvim_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_status then
    print("Could not load cmp_nvim_lsp")
    return
end


local keymap = vim.keymap

local on_attach = function(client, bufnr)
end

local capabilities = cmp_nvim_lsp.default_capabilities()


local servers = require("linus.plugins.lsp.lsp_servers")

for _, server in pairs(servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = on_attach
    })
end

