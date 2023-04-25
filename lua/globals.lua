local opt = vim.opt
local g = vim.g

--------------------
-- Global Configs --
--------------------

opt.nu = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false
opt.swapfile = false
opt.hlsearch = false
opt.incsearch = true
opt.scrolloff = 8
opt.colorcolumn = "80"
opt.backspace = "indent,eol,start"
opt.cursorline = true
g.moonflyTransparent = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
