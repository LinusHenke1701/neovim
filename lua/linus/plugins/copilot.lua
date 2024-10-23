-- Copilot configuration file
function toggle_copilot()
    if vim.g.copilot_enabled == 1 then
        vim.cmd("Copilot disable")
        print("Copilot disabled")
    else
        vim.cmd("Copilot enable")
        print("Copilot enabled")
    end
end

local isInList = function(list, value)
    for _, v in pairs(list) do
        if v == value then
            return true
        end
    end
    return false
end

local enabled = 1
local unwanted_filetypes = {
    "tex",
    "text",
    "markdown",
    "html",
    "css",
}
local filetype = vim.bo.filetype
if isInList(unwanted_filetypes, filetype) then
    enabled = 0
end

vim.g.copilot_enabled = enabled
vim.api.nvim_set_keymap("n", "<leader>tc", ":lua toggle_copilot()<CR>",
    { noremap = true, silent = true })
