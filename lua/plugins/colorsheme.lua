local status, catppuccin = pcall(require, "catppuccin")
if not status then
    return
end

catppuccin.setup({
    transparent_background = true
})

vim.cmd.colorscheme "catppuccin"
