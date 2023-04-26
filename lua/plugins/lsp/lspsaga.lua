-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

saga.setup({
  -- keybinds for navigation in lspsaga window
  scroll_preview = { scroll_down = "<C-b>", scroll_up = "<C-f>" },
  ui = {
    colors = {
      normal_bg = "#022746",
    },
  },
  symbol_in_winbar = {
    enable = false,
  },
})
