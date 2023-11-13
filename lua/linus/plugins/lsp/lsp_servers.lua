return {
    clangd = {},

    svelte = {},

    cmake = {},

    dockerls = {},

    lua_ls = {},

    pyright = {
        settings = {
            pyright = {
                { autoimportCompletion = true, },
            },
            python = {
                analysis = {
                    autoSearchPaths = true,
                    diagnosticMode = "openFilesOnly",
                    typeCheckingMode = "strict",
                },
                pythonPath = "/usr/local/bin/python"
            }
        }
    },

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
}
