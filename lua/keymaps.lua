local keymap = vim.keymap

-----------------
-- vim keymaps --
-----------------

keymap.set("n", "<Space>pv", vim.cmd.Ex)
keymap.set("i", "<Space>jk", "<Esc>")
keymap.set("n", "x", '"_x') -- delete single character without copying into register
keymap.set("n", "<C-d>", "<C-d>zz") -- jump down half page
keymap.set("n", "<C-u>", "<C-u>zz") -- jump up half page
keymap.set("i", "<C-e>", "<C-o>A") -- append to end of line without leaving insert mode

-- window management
keymap.set("n", "<Space>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<Space>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<Space>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<Space>sx", ":close<CR>") -- close current split window

keymap.set("n", "<Space>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<Space>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<Space>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<Space>tp", ":tabp<CR>") --  go to previous tab

--------------------
-- plugin keymaps --
--------------------

-- telescope
keymap.set("n", "<Space>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<Space>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type

-- vim-maximizer
keymap.set("n", "<Space>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
