---@type table<string, vim.lsp.Config>
return {
  clangd = {},
  gopls = {},
  pyright = {},
  rust_analyzer = {},

  html = {},
  cssls = {},
  ts_ls = {},
  jsonls = {},

  tailwindcss = {},
  astro = {},

  nextls = {},

  emmet_ls = {
    filetypes = {
      'html',

      'css',
      'sass',
      'scss',

      'javascript',

      'javascriptreact',
      'typescriptreact',

      'svelte',
      'vue',
    },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ['bem.enabled'] = true,
        },
      },
    },
  },

  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },
}

-- See `:help lsp-config` for information about keys and how to configure
-- See `:help lspconfig-all` for a list of all the pre-configured LSPs
--
-- Some languages (like typescript) have entire language plugins that can be useful:
--    https://github.com/pmizio/typescript-tools.nvim
--
-- But for many setups, the LSP (`ts_ls`) will work just fine
