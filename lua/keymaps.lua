local keymap = vim.keymap

-------------
-- keymaps --
-------------

keymap.set("n", "<Space>pv", vim.cmd.Ex)
keymap.set("i", "<Space>jk", "<Esc>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

keymap.set("n", "<C-d>", "<C-d>zz") -- jump down half page
keymap.set("n", "<C-u>", "<C-u>zz") -- jump up half page

-- telescope
keymap.set("n", "<Space>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<Space>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
