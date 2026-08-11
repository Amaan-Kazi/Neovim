---@module 'custom.types.language-server'
---@type language_server_config[]
return {
  -- Web
  require 'custom.packages.language-servers.html',
  require 'custom.packages.language-servers.cssls',
  require 'custom.packages.language-servers.emmet-ls',

  -- Javascript
  require 'custom.packages.language-servers.ts-ls',
  require 'custom.packages.language-servers.jsonls',

  -- Web frameworks / libraries
  require 'custom.packages.language-servers.tailwindcss',
  require 'custom.packages.language-servers.astro',

  require 'custom.packages.language-servers.clangd',
  require 'custom.packages.language-servers.asm-lsp',

  require 'custom.packages.language-servers.gopls',
  require 'custom.packages.language-servers.pyright',
  require 'custom.packages.language-servers.rust-analyzer',
  require 'custom.packages.language-servers.jdtls',

  require 'custom.packages.language-servers.lua-ls',
}

-- See `:help lsp-config` for information about keys and how to configure
-- See `:help lspconfig-all` for a list of all the pre-configured LSPs
--
-- Some languages (like typescript) have entire language plugins that can be useful:
--    https://github.com/pmizio/typescript-tools.nvim
--
-- But for many setups, the LSP (`ts_ls`) will work just fine
