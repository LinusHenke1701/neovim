return {
    clangd = {},

    cmake = {},

    dockerls = {},

    lua_ls = {},

    pyright = {
        settings = {
            python = {
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
