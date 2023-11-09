local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
    print("Could not load toggleterm")
end

toggleterm.setup{}
