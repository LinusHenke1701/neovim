local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
    print("Could not load lspsaga")
    return
end

saga.setup({})
