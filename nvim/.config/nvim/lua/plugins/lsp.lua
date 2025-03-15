return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')
    -- LSP servers
    local servers = {
      -- PHP
      intelephense = {
        intelephense = {
          cmd = { 'intelephense', '--stdio' },
          filetypes = { 'php' },
          root_dir = function(fname)
            return lspconfig.util.root_pattern('composer.json', '.git')(fname) or vim.fn.getcwd()
          end,
          settings = {
            intelephense = {
              files = {
                maxSize = 5000000; -- Set max file size for analysis
              },
            },
          },
        },
        -- pyright = {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python' },
        root_dir = function(fname)
          return lspconfig.util.root_pattern('pyproject.toml', 'setup.py', '.git')(fname) or vim.fn.getcwd()
        end,
        settings = {
          python = {
            analysis = {
              autoImportCompletions = true,
              diagnosticMode = "workspace",
            },
          },
        },
      },
      -- JavaScript
      ts_ls = {
        cmd = { 'typescript-language-server', '--stdio' },
        filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact' },
        root_dir = function(fname)
          return lspconfig.util.root_pattern('tsconfig.json', 'jsconfig.json')(fname) or vim.fn.getcwd()
        end,
        settings = {
          documentFormatting = false,
          completions = {
            completeFunctionCalls = true,
          },
        },
      },
      -- Lua
      lua_ls = {
        filetypes = { 'lua' },
        root_dir = function(fname)
          return vim.fn.getcwd()
        end,
      },
      -- Other language servers...
    }
    -- Setup LSP servers
    for server, config in pairs(servers) do
      local ok, setup = pcall(lspconfig[server].setup, config)
      if not ok then
        print("Error setting up " .. server .. ": " .. setup)
      end
    end
    -- LSP settings
    vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics,
      {
        -- Enable diagnostics for all buffers
        enable = true,
      }
    )

    -- Set up diagnostics keybinding with border
    vim.api.nvim_set_keymap('n', '<leader>df', '<cmd>lua vim.diagnostic.open_float({ border = "rounded" })<CR>', { noremap = true, silent = true })
  end
}
