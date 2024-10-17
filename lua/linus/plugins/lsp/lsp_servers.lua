local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
    return
end


local function find_python_path()
    local read = io.popen("which python")
    if read then
        local path = read:read("*a")
        read:close()
        return path:gsub("%\n", "")
    else
        return "/usr/local/bin/python"
    end
end

local python_path = find_python_path()

return {
    clangd = {
        cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--compile-commands-dir=./build"
        },
        init_options = {
            usePlaceHolders = true,
            completeUnimported = true,
            clangdFileStatus = true,
            semanticHighlighting = true,
        },
        root_dir = nvim_lsp.util.root_pattern(
            ".git", "CMakeLists.txt"
        ),
        settings = {
            compileCommandsDirectory = "build",
        },
    },

    svelte = {},

    cmake = {
        root_dir = nvim_lsp.util.root_pattern(
            "CMakeLists.txt"
        ),
    },

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
                    typeCheckingMode = "on",
                },
                pythonPath = python_path,
--                pythonPath = find_python_path()
            }
        }
    },

    quick_lint_js = {},

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

    hls = {},

    tsserver = {},

    eslint = {},

    bashls = {},

    tailwindcss = {},

    swift_mesonls = {},

}
