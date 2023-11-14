local status, py_lsp = pcall(require, "py_lsp")
if not status then
    print("Could not load py_lsp")
    return
end

py_lsp.setup({
    host_python = "/usr/local/bin/python",
    default_venv_name = "venv",
})

