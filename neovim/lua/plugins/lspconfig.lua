-- Mason automatically install needed lsp servers
require('mason').setup()
require('mason-lspconfig').setup({
  automatic_installation = true
})

-- PHP
require('lspconfig').intelephense.setup({
  commands = {
    IntelephenseIndex = {
      function()
        vim.lsp.buf.execute_command({ command = 'intelephense.index.workspace' })
      end,
    },
  },
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
    -- if client.server_capabilities.inlayHintProvider then
    --   vim.lsp.buf.inlay_hint(bufnr, true)
    -- end
  end,
  capabilities = capabilities
})

-- require('lspconfig').phpactor.setup({
--   capabilities = capabilities,
--   on_attach = function(client, bufnr)
--     client.server_capabilities.completionProvider = false
--     client.server_capabilities.hoverProvider = false
--     client.server_capabilities.implementationProvider = false
--     client.server_capabilities.referencesProvider = false
--     client.server_capabilities.renameProvider = false
--     client.server_capabilities.selectionRangeProvider = false
--     client.server_capabilities.signatureHelpProvider = false
--     client.server_capabilities.typeDefinitionProvider = false
--     client.server_capabilities.workspaceSymbolProvider = false
--     client.server_capabilities.definitionProvider = false
--     client.server_capabilities.documentHighlightProvider = false
--     client.server_capabilities.documentSymbolProvider = false
--     client.server_capabilities.documentFormattingProvider = false
--     client.server_capabilities.documentRangeFormattingProvider = false
--   end,
--   init_options = {
--     ["language_server_phpstan.enabled"] = false,
--     ["language_server_psalm.enabled"] = false,
--   },
--   handlers = {
--     ['textDocument/publishDiagnostics'] = function() end
--   }
-- })

-- Diagnostic
vim.diagnostic.config({
  virtual_text = false,
  float = {
    source = true
  }
})

-- Sign configuration
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })

-- Key Mappings
vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')
