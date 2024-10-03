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

vim.g.copilot_enabled = 1
vim.api.nvim_set_keymap("n", "<leader>tc", ":lua toggle_copilot()<CR>",
    { noremap = true, silent = true })
