--------------
-- Sourcing --
--------------

require('globals') -- get global config
require('keymaps') -- get keymaps
require('plugins-setup') -- packer

-- plugins --

require('plugins.comment') -- https://github.com/numToStr/Comment.nvim
require('plugins.telescope') -- https://github.com/nvim-telescope/telescope.nvim
require('plugins.treesitter') -- https://github.com/nvim-treesitter/nvim-treesitter
require('plugins.lsp') -- lsp
require('plugins.autopairs') -- autopairs
require('plugins.colorsheme') -- preferred colorsheme
