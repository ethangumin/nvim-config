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
require('plugins.lsp.mason') -- managine and isntalling lsp servers, linters, formatters
require('plugins.lsp.lspconfig') -- configure language servers
require('plugins.lsp.null-ls') -- formatters and linters
require('plugins.nvim-cmp') -- formatters and linters
require('plugins.autopairs') -- autopairs
require('plugins.colorsheme') -- preferred colorsheme
