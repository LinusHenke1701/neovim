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

local opts = { noremap = true, silent = true }
local on_attach = function(client, bufnr)
    opts.desc = "Show LSP reference"
    keymap.set("n", "gR", "<cmd>Telescope lsp_reference<CR>", opts)

    opts.desc = "Go to declaration"
    keymap.set("n" , "gD", vim.lsp.buf.declaration, opts)

    opts.desc = "Show LSP definitions"
    keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

    opts.desc = "Show LSP implementations"
    keymap.set("n", "gi", "<cmd>Telesope lsp_implementations<CR>", opts)

    opts.desc = "See available code actions"
    keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts)

    opts.desc = "Smart rename"
    keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end

local capabilities = cmp_nvim_lsp.default_capabilities()


--  Setup of  icons
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticsSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

--  Configuring every server in the lsp_servers file
local servers = require("linus.plugins.lsp.lsp_servers")

local additional_setup = {
    rust_analyzer = {
        settings = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    },
    pyright = {
        settings = {
            python = {
                pythonPath = "/usr/local/bin/python"
            }
        }
    }
}

for _, server in pairs(servers) do
    local setup_options = {
        capabilities = capabilities,
        on_attach = on_attach,
    }

    add_settings = additional_setup[server]
    if add_settings ~= nil then
        for k, v in pairs(add_settings) do
            setup_options[k] = v
        end
    end

    lspconfig[server].setup(setup_options)
end

