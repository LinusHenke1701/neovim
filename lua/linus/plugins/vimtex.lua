local setup, vimtex = pcall(require, "vimtex")
if not setup then
    print("Could not load vimtex")
    return
end

local setup_function = function ()
end

vimtex.setup({
    init = setup_function,
})
