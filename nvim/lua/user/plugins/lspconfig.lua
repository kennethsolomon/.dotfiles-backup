require ('mason').setup()
require('mason-lspconfig').setup({ automatic_installation = true })

-- null-ls
require ('null-ls') .setup({
    sources = {
      require('null-ls').builtins.diagnostics.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ '.eslintro.js' })
          end,
        }),
      require ('null-ls').builtins.diagnostics.trail_space.with({ disabled_filetypes = { 'NvimTree' } }),
      require ('null-ls').builtins.formatting.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ ' eslintro.js' })
          end,
        }),
      require('null-ls').builtins.formatting.prettierd,
    },
  })

require('mason-null-ls').setup({ automatic_installation = true })

-- PHP
require('lspconfig').intelephense.setup({})

-- VUE
require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

-- tailwindcss
require'lspconfig'.tailwindcss.setup{}

-- Keymaps
vim.keymap.set('n','<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim. keymap. set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim. keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim. keymap.set('n', '<Leader>rn', '<cmd> lua vim.lsp.buf.rename()<CR>')

-- Commands
-- vim.api.nvim_create_user_command('Format', vim.lsp.buf.formatting, {})

--Diagnostic Config
vim.diagnostic.config({
    virtual_text = false,
    float = {
      source = true,
    }
  })

-- Sign configuration
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticSignHint' })
