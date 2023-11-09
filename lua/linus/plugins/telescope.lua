--  Require telescope
local setup, telescope = pcall(require, "telescope")
if not setup then
    print("Could not load telescope")
    return
end

--  Require telescope.builtin
local setup, builtin = pcall(require, "telescope.builtin")
if not setup then
    print("Could not load telescope.builtin,")
    return
end

--  Require telescope.actions
local setup, actions = pcall(require, "telescope.actions")
if not setup then
    print("Could not load telescope.actions")
    return
end

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


telescope.setup{
    defaults = {
        mappings = {
          i = {
            ["<C-h>"] = actions.move_selection_next,
            ["<C-l>"] = actions.move_selection_previous,
          }
        }
      },
}

