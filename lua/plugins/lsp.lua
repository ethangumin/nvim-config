local lspconfig_status, lsp = pcall(require, "lsp-zero")
if not lspconfig_status then
  return
end

local cmp_status, cmp = pcall(require, "cmp")
if not cmp_status then
  return
end

lsp.preset("recommended")

-- Fix Undefined global 'vim'
lsp.nvim_workspace()

lsp.ensure_installed({
    'lua_ls',
    'rust_analyzer',
})

local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(), -- start completion
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
local lsp_format_on_save = function(bufnr)
  vim.api.nvim_clear_autocmds({group = augroup, buffer = bufnr})
  vim.api.nvim_create_autocmd('BufWritePre', {
    group = augroup,
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end,
  })
end

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    lsp_format_on_save(bufnr)

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
end)

lsp.setup()
