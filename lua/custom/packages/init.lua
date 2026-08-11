---@module 'lazy'
---@type LazySpec
return {
  -- Package manager for debug adapters, formatters, linters and language servers
  require 'custom.packages.mason',

  -- Automatically install mason packages on startup
  require 'custom.packages.mason-tool-installer',

  -- Provides default language server configurations
  -- We are also enabling the servers and attaching lsp specific keybinds to the buffer right here
  require 'custom.packages.nvim-lspconfig',
}
